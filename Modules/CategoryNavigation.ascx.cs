//------------------------------------------------------------------------------
// The contents of this file are subject to the nopCommerce Public License Version 1.0 ("License"); you may not use this file except in compliance with the License.
// You may obtain a copy of the License at  http://www.nopCommerce.com/License.aspx. 
// 
// Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. 
// See the License for the specific language governing rights and limitations under the License.
// 
// The Original Code is nopCommerce.
// The Initial Developer of the Original Code is NopSolutions.
// All Rights Reserved.
// 
// Contributor(s): _______. 
//------------------------------------------------------------------------------


using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using NopSolutions.NopCommerce.BusinessLogic.Categories;
using NopSolutions.NopCommerce.BusinessLogic.Products;
using NopSolutions.NopCommerce.BusinessLogic.SEO;
using NopSolutions.NopCommerce.Common.Utils;
using NopSolutions.NopCommerce.BusinessLogic.Configuration.Settings;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;

namespace NopSolutions.NopCommerce.Web.Modules
{
    public partial class CategoryNavigation: BaseNopFrontendUserControl
    {
        #region Classes
        public class NopCommerceLi : WebControl, INamingContainer
        {
            public NopCommerceLi()
            {
                this.HyperLink = new HyperLink();
            }

            protected override void Render(System.Web.UI.HtmlTextWriter writer)
            {
                this.HyperLink.RenderControl(writer);
            }

            public string LinkText
            {
                get
                {
                    return this.HyperLink.Text;
                }
                set
                {
                    if (value != null)
                    {
                        this.HyperLink.Text = value;
                    }
                }
            }

            public HyperLink HyperLink { get; set; }

            public string LiLeftMargin
            {
                get
                {
                    object liLeftMargin = this.ViewState["LiLeftMargin"];
                    if (liLeftMargin != null)
                        return Convert.ToString(liLeftMargin);
                    return string.Empty;

                }
                set
                {
                    this.ViewState["LiLeftMargin"] = value;
                }
            }
        }
        #endregion
        
        #region Overrides
        protected override void CreateChildControls()
        {
            if (!this.ChildControlsCreated)
            {
                CreateMenu();
                base.CreateChildControls();
                ChildControlsCreated = true;
            }
        }
        #endregion

        #region Utilities

        protected void CreateMenu()
        {
            List<Category> breadCrumb = null;
            var currentCategory = this.CategoryService.GetCategoryById(CommonHelper.QueryStringInt("CategoryId"));
            if (currentCategory == null)
            {
                var product = this.ProductService.GetProductById(CommonHelper.QueryStringInt("ProductId"));
                if (product != null)
                {
                    var productCategories = product.ProductCategories;
                    if (productCategories.Count > 0)
                    {
                        currentCategory = productCategories[0].Category;
                    }
                }
            }

            if (currentCategory != null)
                breadCrumb = this.CategoryService.GetBreadCrumb(currentCategory.CategoryId);
            else
                breadCrumb = new List<Category>();

            CreateChildMenu(breadCrumb, 0, currentCategory, 0);
        }

        protected int GetNumberOfProducts(Category category, bool includeSubCategories)
        {
            int numberOfProducts = 0;
            var products = this.ProductService.GetAllProducts(category.CategoryId,
                        0, 0, null, null, null, string.Empty, false, 1, 0,
                        null, ProductSortingEnum.Position, out numberOfProducts);

            if (includeSubCategories)
            {
                var subCategories = this.CategoryService.GetAllCategoriesByParentCategoryId(category.CategoryId);
                foreach (var subCategory in subCategories)
                {
                    int tmp1 = GetNumberOfProducts(subCategory, includeSubCategories);
                    numberOfProducts += tmp1;
                }
            }
            return numberOfProducts;
        }

        protected void CreateChildMenu(List<Category> breadCrumb, int rootCategoryId, Category currentCategory, int level)
        {
            int padding = level++ * 15;
            foreach (var category in this.CategoryService.GetAllCategoriesByParentCategoryId(rootCategoryId))
            {
                var link = new NopCommerceLi();

                string categoryURL = SEOHelper.GetCategoryUrl(category);
                link.HyperLink.NavigateUrl = categoryURL;
                string catName = string.Empty;
                catName = category.LocalizedName;
                catName += "(" + GetNumberOfProducts(category, false) + ")";
                link.HyperLink.Text = Server.HtmlEncode(catName);

                phCategories.Controls.Add(new LiteralControl("<div class='column'>"));

                phCategories.Controls.Add(link);
                CreateSubChildMenu(breadCrumb, category.CategoryId, currentCategory, level);

                phCategories.Controls.Add(new LiteralControl("</div>"));
            }
        }

        private void CreateSubChildMenu(List<Category> breadCrumb, int rootCategoryId, Category currentCategory, int level)
        {
            int padding = level++ * 15;
            phCategories.Controls.Add(new LiteralControl("<div>"));
            phCategories.Controls.Add(new LiteralControl("<ul>"));
            foreach (var category in this.CategoryService.GetAllCategoriesByParentCategoryId(rootCategoryId))
            {
                var link = new NopCommerceLi();

                string categoryURL = SEOHelper.GetCategoryUrl(category);
                link.HyperLink.NavigateUrl = categoryURL;
                string catName = string.Empty;
                catName = category.LocalizedName;
                catName += "(" + GetNumberOfProducts(category, false) + ")";
                link.HyperLink.Text = Server.HtmlEncode(catName);

                phCategories.Controls.Add(new LiteralControl("<li>"));
                phCategories.Controls.Add(link);
                phCategories.Controls.Add(new LiteralControl("</li>"));
                

                
            }
            phCategories.Controls.Add(new LiteralControl("</ul>"));
            phCategories.Controls.Add(new LiteralControl("</div>"));
        }
        
        #endregion
    }
}
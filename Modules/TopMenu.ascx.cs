using System;
using System.Collections;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using AjaxControlToolkit;
using NopSolutions.NopCommerce.BusinessLogic;
using NopSolutions.NopCommerce.BusinessLogic.Categories;
using NopSolutions.NopCommerce.BusinessLogic.Products;
using NopSolutions.NopCommerce.BusinessLogic.SEO;
using NopSolutions.NopCommerce.Common.Utils;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;
namespace NopSolutions.NopCommerce.Web.Modules
{
    public partial class TopMenu : BaseNopFrontendUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                BindData();
        }

        protected void BindData()
        {
            foreach (var product in this.ProductService.GetAllProducts())
            {
                //var product = this.ProductService.GetProductById(12);
                if (product != null)
                {
                    //hlProduct.NavigateUrl = SEOHelper.GetProductUrl(product);

                    var productCategories = product.ProductCategories;
                    if (productCategories.Count > 0)
                    {
                        var category = productCategories[0].Category;
                        if (category != null)
                        {
                            var breadCrumb = this.CategoryService.GetBreadCrumb(category.CategoryId);
                            if (breadCrumb.Count > 0)
                            {
                                rptrCategoryBreadcrumb.DataSource = breadCrumb;
                                rptrCategoryBreadcrumb.DataBind();
                            }
                        }
                    }

                    //hlProduct.Text = Server.HtmlEncode(product.LocalizedName);
                }
                else
                    this.Visible = false;
            }
        }
    }
}
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
using System.Linq;

namespace NopSolutions.NopCommerce.Web.Modules
{
    public partial class APCategoryNavigation : BaseNopFrontendUserControl
    {
        List<Category> CategoryList;
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
        }

        private void BindData()
        {
            CategoryList = new List<Category>();
            CategoryList = this.CategoryService.GetAllCategories();
            IEnumerable<Category> parentCategory;
            if (CategoryList != null)
            {
                parentCategory = from category in CategoryList
                                 where category.ParentCategoryId == 0
                                 orderby category.ParentCategoryId,category.DisplayOrder
                                 select category;
                rptParentCategory.DataSource = parentCategory;
                rptParentCategory.DataBind();
            }
        }

        protected void rptParentCategory_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (rptParentCategory != null)
            {
                if (e.Item.ItemType == ListItemType.Item)
                {
                    Label lblParentCategoryID = (Label)e.Item.FindControl("lblParentCategoryID");
                    HyperLink hypParentCategory = (HyperLink)e.Item.FindControl("hypParentCategory");
                    Repeater rptCategory = (Repeater)e.Item.FindControl("rptCategory");
                }
            }
        }
    }
}
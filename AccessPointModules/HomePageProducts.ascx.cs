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
using NopSolutions.NopCommerce.BusinessLogic;
using NopSolutions.NopCommerce.BusinessLogic.Categories;
using NopSolutions.NopCommerce.BusinessLogic.Media;
using NopSolutions.NopCommerce.BusinessLogic.Products;
using NopSolutions.NopCommerce.BusinessLogic.SEO;
using NopSolutions.NopCommerce.Common.Utils;
using NopSolutions.NopCommerce.BusinessLogic.Configuration.Settings;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;

namespace NopSolutions.NopCommerce.Web.AccessPointModules
{
    public partial class HomePageProducts : BaseNopFrontendUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();  
        }

        private void BindData()
        {
            var products = this.ProductService.GetAllProductsDisplayedOnHomePage();
            if (products.Count > 0)
            {
                rptrHomeProducts.DataSource = products;
                rptrHomeProducts.DataBind();
            }
            else
            {
                this.Visible = false;
            }
        }

        protected void rptrHomeProducts_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                var product = e.Item.DataItem as Product;
                if (product != null)
                {
                    string productURL = SEOHelper.GetProductUrl(product);

                    var hypImages = e.Item.FindControl("hypImages") as HyperLink;
                    if (hypImages != null)
                    {
                        var picture = product.DefaultPicture;
                        if (picture != null)
                            hypImages.ImageUrl = this.PictureService.GetPictureUrl(picture, this.SettingManager.GetSettingValueInteger("Media.Product.ThumbnailImageSize", 125), true);
                        else
                            hypImages.ImageUrl = this.PictureService.GetDefaultPictureUrl(this.SettingManager.GetSettingValueInteger("Media.Product.ThumbnailImageSize", 125));

                        hypImages.NavigateUrl = productURL;
                        hypImages.ToolTip = String.Format(GetLocaleResourceString("Media.Product.ImageLinkTitleFormat"), product.LocalizedName);
                        hypImages.Text = String.Format(GetLocaleResourceString("Media.Product.ImageAlternateTextFormat"), product.LocalizedName);
                    }

                    var hypProducts = e.Item.FindControl("hypProducts") as HyperLink;
                    if (hypProducts != null)
                    {
                        hypProducts.NavigateUrl = productURL;
                        hypProducts.Text = Server.HtmlEncode(product.LocalizedName);
                    }
                }
            }
        }
    }
}
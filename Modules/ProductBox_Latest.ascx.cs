using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using NopSolutions.NopCommerce.BusinessLogic;
using NopSolutions.NopCommerce.BusinessLogic.Configuration.Settings;
using NopSolutions.NopCommerce.BusinessLogic.Directory;
using NopSolutions.NopCommerce.BusinessLogic.Localization;
using NopSolutions.NopCommerce.BusinessLogic.Media;
using NopSolutions.NopCommerce.BusinessLogic.Orders;
using NopSolutions.NopCommerce.BusinessLogic.Products;
using NopSolutions.NopCommerce.BusinessLogic.SEO;
using NopSolutions.NopCommerce.BusinessLogic.Tax;
using NopSolutions.NopCommerce.Common.Utils;
using NopSolutions.NopCommerce.BusinessLogic.Infrastructure;

namespace NopSolutions.NopCommerce.Web.Modules
{
    public partial class ProductBox_Latest: BaseNopFrontendUserControl
    {
        Product product = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            //base.DataBind();
            this.BindData();
        }

        private void BindData()
        {
            if (product != null)
            {
                string productURL = SEOHelper.GetProductUrl(product);

                hlProduct.NavigateUrl = productURL;
                if (Server.HtmlEncode(product.LocalizedName).Length >=14)
                    hlProduct.Text = Server.HtmlEncode(product.LocalizedName).Substring(0, 14) + " ...";
                hlProduct.ToolTip = String.Format(GetLocaleResourceString("Media.Product.ImageLinkTitleFormat"), product.LocalizedName);

                var picture = product.DefaultPicture;
                if (picture != null)
                {
                    hlImageLink.ImageUrl = this.PictureService.GetPictureUrl(picture, this.ProductImageSize, true);
                    hlImageLink.ToolTip = String.Format(GetLocaleResourceString("Media.Product.ImageLinkTitleFormat"), product.LocalizedName);
                    hlImageLink.Text = String.Format(GetLocaleResourceString("Media.Product.ImageAlternateTextFormat"), product.LocalizedName);
                   
                }
                else
                {
                    hlImageLink.ImageUrl = this.PictureService.GetDefaultPictureUrl(this.ProductImageSize);
                    hlImageLink.ToolTip = String.Format(GetLocaleResourceString("Media.Product.ImageLinkTitleFormat"), product.LocalizedName);
                    hlImageLink.Text = String.Format(GetLocaleResourceString("Media.Product.ImageAlternateTextFormat"), product.LocalizedName);
                }
                hlImageLink.NavigateUrl = productURL;
            }
        }

        public Product Product
        {
            get
            {
                return product;
            }
            set
            {
                product = value;
            }
        }

        public int ProductImageSize
        {
            get
            {
                if (ViewState["ProductImageSize"] == null)
                    return this.SettingManager.GetSettingValueInteger("Media.Product.ThumbnailImageSize", 125);
                else
                    return (int)ViewState["ProductImageSize"];
            }
            set
            {
                ViewState["ProductImageSize"] = value;
            }
        }

        /// <summary>
        /// Gets or sets a value whether we redirects a customer to shopping cart page after adding a product to the cart (overrides "Display.Products.DisplayCartAfterAddingProduct" settings)
        /// </summary>
        public bool? RedirectCartAfterAddingProduct
        {
            get
            {
                if (ViewState["RedirectCartAfterAddingProduct"] == null)
                    return null;
                else
                    return (bool)ViewState["RedirectCartAfterAddingProduct"];
            }
            set
            {
                ViewState["RedirectCartAfterAddingProduct"] = value;
            }
        }
    }
}
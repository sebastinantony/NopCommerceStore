<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OneVariant.ascx.cs"
    Inherits="NopSolutions.NopCommerce.Web.Templates.Products.OneVariant" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductCategoryBreadcrumb" Src="~/Modules/ProductCategoryBreadcrumb.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductRating" Src="~/Modules/ProductRating.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductEmailAFriendButton" Src="~/Modules/ProductEmailAFriendButton.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductAddToCompareList" Src="~/Modules/ProductAddToCompareList.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductSpecs" Src="~/Modules/ProductSpecifications.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="RelatedProducts" Src="~/Modules/RelatedProducts.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductReviews" Src="~/Modules/ProductReviews.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductsAlsoPurchased" Src="~/Modules/ProductsAlsoPurchased.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="SimpleTextBox" Src="~/Modules/SimpleTextBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="NumericTextBox" Src="~/Modules/NumericTextBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="DecimalTextBox" Src="~/Modules/DecimalTextBox.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductAttributes" Src="~/Modules/ProductAttributes.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="GiftCardAttributes" Src="~/Modules/GiftCardAttributes.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductPrice1" Src="~/Modules/ProductPrice1.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="TierPrices" Src="~/Modules/TierPrices.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductTags" Src="~/Modules/ProductTags.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductShareButton" Src="~/Modules/ProductShareButton.ascx" %>

<ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true"
    EnableScriptLocalization="true" ID="sm1" ScriptMode="Release" CompositeScript-ScriptMode="Release" />
<!--Middle Part Start-->
<div id="content">
                    <% if (this.SettingManager.GetSettingValueBoolean("Media.CategoryBreadcrumbEnabled"))
                    { %>
                        <nopCommerce:ProductCategoryBreadcrumb ID="ctrlProductCategoryBreadcrumb" runat="server" />
                    <% } %>
                    <h1>
                        <asp:Literal ID="lProductName" runat="server" /></h1>
                    <div class="product-info">
                        <div class="left">
                            <div class="image">
                            <a runat="server" 
                            class="cloud-zoom colorbox" id='lnkMainLightbox' rel="adjustX: 0, adjustY:0, tint:'#000000',tintOpacity:0.2, zoomWidth:360, position:'inside', showTitle:false">
                <asp:Image ID="defaultImage" runat="server" /><span id="Span1"><i class="zoom_bttn"></i> Zoom</span>
            </a>
            </div>
            <asp:ListView ID="lvProductPictures" runat="server" GroupItemCount="3">
                <ItemTemplate>
                    <div class="image-additional">
                        <a href="<%#this.PictureService.GetPictureUrl((Picture)Container.DataItem)%>" class="cloud-zoom-gallery"
                         
                            title="<%= lProductName.Text%>">
                            <img src="<%#this.PictureService.GetPictureUrl((Picture)Container.DataItem, 70)%>" width="62" alt="Product image" /></a>
                    </td>
                </ItemTemplate>
            </asp:ListView>
                            
                        </div>
                        <div class="right">
                            <div class="description">
                                <span>Description: </span> 
                                <asp:Literal ID="lShortDescription" runat="server" />
                                </div>
                            <div class="price">
                                <nopCommerce:ProductPrice1 ID="ctrlProductPrice" runat="server" />
                            </div>
                            <div class="options">
                                <h2>
                                    Available Options</h2>
                                <div id="option-226" class="option">
                                    <span class="required">*</span> <b>Select:</b><br />
                                    <select name="option">
                                        <option value="">--- Please Select --- </option>
                                        <option value="15">Red</option>
                                        <option value="16">Blue</option>
                                    </select>
                                </div>
                            </div>
                            <div class="cart">
                                <div>
                                    <div class="qty">
                                        <strong>Qty:</strong> <a class="qtyBtn mines" href="javascript:void(0);">-</a>
                                        <input id="qty" type="text" class="w30" name="quantity" size="2" value="1" />
                                        <a class="qtyBtn plus" href="javascript:void(0);">+</a>
                                        <input type="hidden" name="product_id" size="2" value="30" />
                                        <div class="clear">
                                        </div>
                                    </div>
                                    <input type="button" value="Add to Cart" id="button-cart" class="button" />
                                </div>
                                <div>
                                    <a href="#" class="wishlist">Add to Wish List</a> <a href="#" class="wishlist">Add to
                                        Compare</a></div>
                            </div>
                            <div class="review">
                                <div>
                                    <img src="image/stars-3.png" alt="2 reviews" />&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');">0
                                        reviews</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');">Write
                                            a review</a></div>
                            </div>
                            <!-- AddThis Button BEGIN -->
                            <script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=xa-506f325f57fbfc95"></script>
                            <!-- AddThis Button END -->
                        </div>
                    </div>
                    <!-- Description and Reviews Tab Start -->
                    <div id="tabs" class="htabs">
                        <a href="#tab-description">Description</a> <a href="#tab-review">Reviews (0)</a>
                    </div>
                    <div id="tab-description" class="tab-content">
                        <asp:Literal ID="lFullDescription" runat="server" />
                    </div>
                    <div id="tab-review" class="tab-content">
                        <div id="review">
                        </div>
                        <h2 id="review-title">
                            Write a review</h2>
                        <br />
                        <b>Your Name:</b><br />
                        <input type="text" name="name" value="" />
                        <br />
                        <br />
                        <b>Your Review:</b>
                        <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
                        <span style="font-size: 11px;"><span style="color: #FF0000;">Note:</span> HTML is not
                            translated!</span><br />
                        <br />
                        <b>Rating:</b> <span>Bad</span>&nbsp;
                        <input type="radio" name="rating" value="1" />
                        &nbsp;
                        <input type="radio" name="rating" value="2" />
                        &nbsp;
                        <input type="radio" name="rating" value="3" />
                        &nbsp;
                        <input type="radio" name="rating" value="4" />
                        &nbsp;
                        <input type="radio" name="rating" value="5" />
                        &nbsp;<span>Good</span><br />
                        <br />
                        <b>Enter the code in the box below:</b><br />
                        <input type="text" name="captcha" value="" />
                        <br />
                        <br />
                        <img src="indexffc1.html?route=product/product/captcha" alt="" id="captcha" /><br />
                        <br />
                        <div class="buttons">
                            <div class="right">
                                <a id="button-review" class="button">Continue</a></div>
                        </div>
                    </div>
                    <script>
                        $(document).ready(function () {
                            $('#tabs a').tabs();
                        });
                    </script>
                    <!-- Description and Reviews Tab Start -->
                    <!--Related Product Start-->
                    <nopCommerce:RelatedProducts ID="ctrlRelatedProducts" runat="server" />
                    
                    <script type="text/javascript">
                        (function () {
                            // store the slider in a local variable
                            var $window = $(window),
      flexslider;
                            // tiny helper function to add breakpoints
                            function getGridSize() {
                                return (window.innerWidth < 320) ? 1 :
		   (window.innerWidth < 600) ? 2 :
		   (window.innerWidth < 800) ? 3 :
           (window.innerWidth < 900) ? 3 : 4;
                            }
                            $window.load(function () {
                                $('#content #related_pro').flexslider({
                                    animation: "slide",
                                    animationLoop: false,
                                    slideshow: false,
                                    itemWidth: 210,
                                    minItems: getGridSize(), // use function to pull in initial value
                                    maxItems: getGridSize() // use function to pull in initial value
                                });
                            });
                        } ());
                    </script>
                    <!--Related Product End-->
                </div>
<!--Middle Part End-->
<div class="product-details-page" style="display:none;">
    <div class="product-essential product-details-info">

        <script language="javascript" type="text/javascript">
            function UpdateMainImage(url) {
                var imgMain = document.getElementById('<%=defaultImage.ClientID%>');
                imgMain.src = url;
            }
        </script>

        <div class="picture">
            
            
        </div>
        <div class="overview">
            <h1 class="productname">
                
            </h1>
            <div class="clear">
            </div>
            <div class="shortdescription">
                
            </div>
            <asp:PlaceHolder runat="server" ID="phSKU">
                <div class="clear">
                </div>
                <div class="sku">
                    <%=GetLocaleResourceString("Products.SKU")%> <asp:Literal runat="server" ID="lSKU" />
                </div>
            </asp:PlaceHolder>
            <asp:PlaceHolder runat="server" ID="phManufacturerPartNumber">
                <div class="clear">
                </div>
                <div class="manufacturerpartnumber">
                    <%=GetLocaleResourceString("Products.ManufacturerPartNumber")%> <asp:Literal runat="server" ID="lManufacturerPartNumber" />
                </div>
            </asp:PlaceHolder>
            <div class="clear">
            </div>
            <asp:PlaceHolder runat="server" ID="phManufacturers">
                <div class="manufacturers">
                    <asp:Literal ID="lManufacturersTitle" runat="server" />
                    <asp:Repeater runat="server" ID="rptrManufacturers">
                        <ItemTemplate>
                            <asp:HyperLink ID="hlManufacturer" runat="server" Text='<%#Server.HtmlEncode(Eval("LocalizedName").ToString()) %>' NavigateUrl='<%#SEOHelper.GetManufacturerUrl((Manufacturer)(Container.DataItem)) %>' />
                        </ItemTemplate>
                        <SeparatorTemplate>
                            ,
                        </SeparatorTemplate>
                    </asp:Repeater>
                </div>
            </asp:PlaceHolder>
            <div class="clear">
            </div>
        <div class="clear">
        </div>
            <div class="product-collateral">
                <nopCommerce:ProductRating ID="ctrlProductRating" runat="server" />
                <br />
                <div class="one-variant-price">
                    
                    <nopCommerce:DecimalTextBox runat="server" ID="txtCustomerEnteredPrice" Value="1"
                        RequiredErrorMessage="<% $NopResources:Products.CustomerEnteredPrice.EnterPrice %>"
                        MinimumValue="0" MaximumValue="100000000" Width="100" />
                </div>
                <div class="add-info">
                    <nopCommerce:NumericTextBox runat="server" ID="txtQuantity" Value="1" RequiredErrorMessage="<% $NopResources:Products.EnterQuantity %>"
                        RangeErrorMessage="<% $NopResources:Products.QuantityRange %>" MinimumValue="1"
                        MaximumValue="999999" Width="50" />
                    <asp:Button ID="btnAddToCart" runat="server" OnCommand="OnCommand" Text="<% $NopResources:Products.AddToCart %>"
                        CommandName="AddToCart" CommandArgument='<%#Eval("ProductVariantId")%>' CssClass="productvariantaddtocartbutton" />
                    <asp:Button ID="btnAddToWishlist" runat="server" OnCommand="OnCommand" Text="<% $NopResources:Wishlist.AddToWishlist %>"
                        CommandName="AddToWishlist" CommandArgument='<%#Eval("ProductVariantId")%>' CssClass="productvariantaddtowishlistbutton" />
                </div>
                <asp:Panel runat="server" ID="pnlDownloadSample" Visible="false" CssClass="one-variant-download-sample">
                    <span class="downloadsamplebutton">
                        <asp:HyperLink runat="server" ID="hlDownloadSample" Text="<% $NopResources:Products.DownloadSample %>" />
                    </span>
                </asp:Panel>
                <br />
                <asp:Panel ID="pnlStockAvailablity" runat="server" class="stock">
                    <asp:Label ID="lblStockAvailablity" runat="server" />
                </asp:Panel>
                <br />
                <nopCommerce:ProductEmailAFriendButton ID="ctrlProductEmailAFriendButton" runat="server" />
                <nopCommerce:ProductAddToCompareList ID="ctrlProductAddToCompareList" runat="server" />
                <div class="clear">
                </div>
                <nopCommerce:ProductShareButton ID="ctrlProductShareButton" runat="server" />
            </div>
        </div>
    </div>
    <div class="clear">
    </div>
    <div class="product-collateral">
        <div class="product-variant-line">
            <asp:Label runat="server" ID="lblError" EnableViewState="false" CssClass="error" />
            <div class="clear">
            </div>
            <nopCommerce:TierPrices ID="ctrlTierPrices" runat="server" />
            <div class="clear">
            </div>
            <div class="attributes">
                <nopCommerce:ProductAttributes ID="ctrlProductAttributes" runat="server" />
            </div>
            <div class="clear">
            </div>
            <nopCommerce:GiftCardAttributes ID="ctrlGiftCardAttributes" runat="server" />
            <div class="clear">
            </div>
            <div class="fulldescription">
                
            </div>
        </div>
        <div class="clear">
        </div>
        <div>
            <nopCommerce:ProductsAlsoPurchased ID="ctrlProductsAlsoPurchased" runat="server" />
        </div>
        <div class="clear">
        </div>
        <div>
            
        </div>
        <div class="clear">
        </div>
        <ajaxToolkit:TabContainer runat="server" ID="ProductsTabs" ActiveTabIndex="1" CssClass="grey">
            <ajaxToolkit:TabPanel runat="server" ID="pnlProductReviews" HeaderText="<% $NopResources:Products.ProductReviews %>">
                <ContentTemplate>
                    <nopCommerce:ProductReviews ID="ctrlProductReviews" runat="server" ShowWriteReview="true" />
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" ID="pnlProductSpecs" HeaderText="<% $NopResources:Products.ProductSpecs %>">
                <ContentTemplate>
                    <nopCommerce:ProductSpecs ID="ctrlProductSpecs" runat="server" />
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" ID="pnlProductTags" HeaderText="<% $NopResources:Products.ProductTags %>">
                <ContentTemplate>
                    <nopCommerce:ProductTags ID="ctrlProductTags" runat="server" />
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
    </div>
</div>

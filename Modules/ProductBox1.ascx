<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.ProductBox1Control"
    CodeBehind="ProductBox1.ascx.cs" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductPrice2" Src="~/Modules/ProductPrice2.ascx" %>
<div>
    <div class="left">
        <div class="image">
            <asp:HyperLink ID="hlImageLink" runat="server" /></div>
        <div class="name">
            <asp:HyperLink ID="hlProduct" runat="server" /></div>
        <div class="description">
            <asp:Literal runat="server" ID="lShortDescription"></asp:Literal></div>
        <div class="price">
            <span class="price-new">
                <nopCommerce:ProductPrice2 ID="ctrlProductPrice" runat="server" ProductId='<%# Eval("ProductId") %>' />
            </span>
            <br />
        </div>
        <div class="cart">
            <asp:Button runat="server" ID="btnProductDetails" OnCommand="btnProductDetails_Click"
                Text="<% $NopResources:Products.ProductDetails %>" ValidationGroup="ProductDetails"
                CommandArgument='<%# Eval("ProductId") %>' CssClass="button" />
            <asp:Button runat="server" ID="btnAddToCart" OnCommand="btnAddToCart_Click" Text="<% $NopResources:Products.AddToCart %>"
                ValidationGroup="ProductDetails" CommandArgument='<%# Eval("ProductId") %>' CssClass="productgridaddtocartbutton"
                Visible="false" />
        </div>
    </div>
</div>
<br />

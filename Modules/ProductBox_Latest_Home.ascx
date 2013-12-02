<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductBox_Latest_Home.ascx.cs"
    Inherits="NopSolutions.NopCommerce.Web.Modules.ProductBox_Latest_Home" %>
    <%@ Register TagPrefix="nopCommerce" TagName="ProductPrice2" Src="~/Modules/ProductPrice2.ascx" %>
<li>
    <div class="slide-inner">
        <div class="image">
            <asp:HyperLink ID="hlImageLink" runat="server" Width="140px"/></div>
        <div class="name">
            <asp:HyperLink ID="hlProduct" runat="server" /></div>
        <div class="price">
            <nopCommerce:ProductPrice2 ID="ctrlProductPrice" runat="server" ProductId='<%# Eval("ProductId") %>' />
        </div>
        <div class="clear">
        </div>
    </div>
</li>



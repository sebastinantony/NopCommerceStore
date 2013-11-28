<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductBox_Latest.ascx.cs"
    Inherits="NopSolutions.NopCommerce.Web.Modules.ProductBox_Latest" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductPrice2" Src="~/Modules/ProductPrice2.ascx" %>
<ul class="slides">
    <li>
        <div class="slide-inner">
            <div class="image">
                <asp:HyperLink ID="hlImageLink" runat="server"  Width="47px"/></div>
            <div class="name">
                <asp:HyperLink ID="hlProduct" runat="server" /></div>
            <div class="price">
                <nopCommerce:ProductPrice2 ID="ctrlProductPrice" runat="server" ProductId='<%# Eval("ProductId") %>' />
            </div>
            <div class="clear">
            </div>
        </div>
    </li>
</ul>

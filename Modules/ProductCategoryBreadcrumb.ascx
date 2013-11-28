<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.ProductCategoryBreadcrumb"
    CodeBehind="ProductCategoryBreadcrumb.ascx.cs" %>
<div class="breadcrumb">
    <a href='<%=CommonHelper.GetStoreLocation()%>'>
        <%=GetLocaleResourceString("Breadcrumb.Top")%></a> &nbsp;&raquo; &nbsp;
    <asp:Repeater ID="rptrCategoryBreadcrumb" runat="server">
        <ItemTemplate>
            <a href='<%#SEOHelper.GetCategoryUrl(Convert.ToInt32(Eval("CategoryId"))) %>'>
                <%#Server.HtmlEncode(Eval("LocalizedName").ToString())%></a>
        </ItemTemplate>
        <SeparatorTemplate>
             &nbsp;&raquo; &nbsp;
        </SeparatorTemplate>
        <FooterTemplate>
             &nbsp;&raquo; &nbsp;
        </FooterTemplate>
    </asp:Repeater>
    <asp:HyperLink runat="server" ID="hlProduct"></asp:HyperLink>
</div>
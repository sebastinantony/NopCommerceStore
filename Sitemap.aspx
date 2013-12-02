<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/TwoColumn.master"
    CodeBehind="Sitemap.aspx.cs" Inherits="NopSolutions.NopCommerce.Web.Sitemap" %>

<asp:Content runat="server" ContentPlaceHolderID="cph1">
    <!--Breadcrumb Part Start-->
    <div class="breadcrumb">
        <a href="index.aspx">Home</a> » <a href="sitemap.aspx">Site Map</a></div>
    <!--Breadcrumb Part End-->
    <h1>
        Site Map</h1>
    <div class="sitemap-info">
        <div class="left">
            <ul class="sitemap">
                <asp:Repeater ID="rpTopics" runat="server" OnItemDataBound="rpTopics_ItemDataBound">
                    <ItemTemplate>
                        <asp:HyperLink ID="hlLink" runat="server" />
                    </ItemTemplate>
                </asp:Repeater>
                <asp:Repeater ID="rpCategories" runat="server" OnItemDataBound="dlCategories_ItemDataBound">
                    <HeaderTemplate>
                        <li>
                            <%=GetLocaleResourceString("Sitemap.Categories")%>
                            <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="hlLink" runat="server" />
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul> </li>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:Repeater ID="rpManufacturers" runat="server" OnItemDataBound="dlManufacturers_ItemDataBound">
                    <HeaderTemplate>
                        <li>
                            <%=GetLocaleResourceString("Sitemap.Manufacturers")%>
                            <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="hlLink" runat="server" />
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul> </li>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:Repeater ID="rpProducts" runat="server" OnItemDataBound="dlProducts_ItemDataBound">
                    <HeaderTemplate>
                        <li>
                            <%=GetLocaleResourceString("Sitemap.Products")%>
                        <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink ID="hlLink" runat="server" />
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul> </li>
                    </FooterTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
</asp:Content>

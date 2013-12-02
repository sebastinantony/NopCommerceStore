<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LatestProducts.ascx.cs"
    Inherits="NopSolutions.NopCommerce.Web.Modules.LatestProducts" %>
<%@ Register Src="ProductBox_Latest_Home.ascx" TagName="ProductBox_Latest_Home" TagPrefix="uc1" %>
<section class="box">
    <div class="box-heading">Latest</div>
    <div class="box-content">
    <div class="box-product">
        <div class="flexslider featured_carousel">
        <ul class="slides">
        <asp:Repeater ID="rpCatalog" runat="server">
            <ItemTemplate>
                <uc1:ProductBox_Latest_Home ID="ProductBox_Latest_Home1" runat="server" Product='<%# Container.DataItem %>'  /> 
            </ItemTemplate>
        </asp:Repeater>
        </ul>
        </div>
    </div>
    </div>
</section>

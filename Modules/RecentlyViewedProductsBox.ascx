<%@ Control Language="C#" AutoEventWireup="true"
    Inherits="NopSolutions.NopCommerce.Web.Modules.RecentlyViewedProductsBoxControl" CodeBehind="RecentlyViewedProductsBox.ascx.cs" %>
<%@ Register Src="ProductBox_Latest.ascx" TagName="ProductBox_Latest" TagPrefix="uc1" %>

<div class="box">
    <div class="box-heading"><%=GetLocaleResourceString("Products.RecentlyViewedProducts")%></div>
    <div class="box-content">
        <div class="box-product">
            <div class="flexslider">
                <ul class="slides">
                    <asp:ListView ID="lvRecentlyViewedProducts" runat="server" EnableViewState="false">
                        <ItemTemplate>
                            <uc1:ProductBox_Latest ID="ProductBox_Latest1" runat="server" Product='<%# Container.DataItem %>' />
                        </ItemTemplate>
                    </asp:ListView>
                </ul>
            </div>
        </div>
    </div>
</div>

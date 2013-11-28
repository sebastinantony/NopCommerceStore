<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RecentlyAddedLeftNav.ascx.cs"
    Inherits="NopSolutions.NopCommerce.Web.Modules.RecentlyAddedLeftNav" %>
<%@ Register Src="ProductBox_Latest.ascx" TagName="ProductBox_Latest" TagPrefix="uc1" %>
<div class="box">
    <div class="box-heading">
        Latest</div>
    <div class="box-content">
        <div class="box-product">
            <div class="flexslider">
                <asp:DataList ID="dlCatalog" runat="server">
                    <ItemTemplate>
                        <uc1:ProductBox_Latest ID="ProductBox_Latest1" runat="server" Product='<%# Container.DataItem %>' />
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </div>
</div>

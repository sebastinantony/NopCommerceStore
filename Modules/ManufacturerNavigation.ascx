<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.ManufacturerNavigation"
    CodeBehind="ManufacturerNavigation.ascx.cs" %>
<div class="box-heading">
    Brand</div>
<div class="box-content">
    <div class="box-product">
        <div class="flexslider featured_carousel">
            <asp:Repeater ID="rptrManufacturers" runat="server" OnItemDataBound="rptrManufacturers_ItemDataBound"
                EnableViewState="false">
                <HeaderTemplate>
                    <ul class="slides">
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <div class="slide-inner">
                            <div class="image">
                                <asp:HyperLink ID="hlImageLink" ImageUrl='<%# PictureService.GetPictureUrl(Convert.ToInt16(Eval("PictureId"))) %>'
                                    runat="server"></asp:HyperLink>
                            </div>
                            <div class="name">
                                <asp:HyperLink ID="hlManufacturer" runat="server" Text='<%#Server.HtmlEncode(Eval("LocalizedName").ToString()) %>'
                                    CssClass='<%# ((int)Eval("ManufacturerId") == this.ManufacturerId) ? "active" : "inactive" %>' />
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>

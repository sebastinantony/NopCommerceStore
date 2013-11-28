<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HomePageProducts.ascx.cs"
    Inherits="NopSolutions.NopCommerce.Web.AccessPointModules.HomePageProducts" %>
<section class="box">
    <div class="box-heading">Featured</div>
    <div class="box-content">
        <div class="box-product">
            <div class="flexslider featured_carousel">
                <asp:Repeater ID="rptrHomeProducts" runat="server" 
                    onitemdatabound="rptrHomeProducts_ItemDataBound">
                    <HeaderTemplate>
                        <ul class="slides">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <div class="slide-inner">
                                <div class="image">
                                    <asp:HyperLink ID="hypImages" runat="server"></asp:HyperLink>
                                </div>
                                <div class="name">
                                    <asp:HyperLink ID="hypProducts" runat="server"></asp:HyperLink>
                                </div>
                                <div class="clear"></div>
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
</section>

<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.RelatedProductsControl"
    CodeBehind="RelatedProducts.ascx.cs" %>
<div class="box">
    <div class="box-heading">
        <%=GetLocaleResourceString("Products.RelatedProducts")%></div>
    <div class="box-content">
        <div class="box-product">
            <div class="flexslider" id="related_pro">
                <ul class="slides">
                    
                    <asp:Repeater ID="rptrRelatedProducts" runat="server" OnItemDataBound="rptrRelatedProducts_ItemDataBound">
                        <ItemTemplate>
                              <li>
                                <div class="slide-inner">
                                    <div class="image">
                                        <asp:HyperLink ID="hlImageLink" runat="server" /></div>
                                    <div class="name">
                                        <asp:HyperLink ID="hlProduct" runat="server" /></div>
                                    <div class="price">
                                        $589.50
                                    </div>
                                    <div class="cart">
                                        <asp:HyperLink ID="btnDetails" Text="Details" CssClass="button" runat="server"></asp:HyperLink>
                                    </div>
                                    <div class="clear">
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>


                </ul>
            </div>
        </div>
    </div>
</div>



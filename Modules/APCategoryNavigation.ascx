<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="APCategoryNavigation.ascx.cs" Inherits="NopSolutions.NopCommerce.Web.Modules.APCategoryNavigation" %>
<div class="box">
    <div class="box-heading">Categories</div>
    <div class="box-content box-category">
        <asp:Repeater ID="rptParentCategory" runat="server" OnItemDataBound="rptParentCategory_ItemDataBound">
            <HeaderTemplate>
                <ul id="cat_accordion">
            </HeaderTemplate>
            <ItemTemplate>
                <li class="custom_id">
                    <asp:HyperLink ID="hypParentCategory" runat="server">HyperLink</asp:HyperLink>
                    <asp:Label ID="lblParentCategoryID" runat="server" Text='<% #Eval("CategoryId") %>' Visible="false"></asp:Label>

                    <asp:Repeater ID="rptCategory" runat="server">
                        <HeaderTemplate>
                            <ul>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <li class="custom_id">
                                <asp:HyperLink ID="hypCategory" runat="server">HyperLink</asp:HyperLink>
                            </li>
                        </ItemTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                    </asp:Repeater>
                </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</div>

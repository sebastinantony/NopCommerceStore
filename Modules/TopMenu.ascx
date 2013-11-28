<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopMenu.ascx.cs" Inherits="NopSolutions.NopCommerce.Web.Modules.TopMenu" %>
<li class="categories_hor"><a>Categories</a>
    <asp:Repeater ID="rptrCategoryBreadcrumb" runat="server">
        <ItemTemplate>
            <div>
                <div class="column">
                    <div>
                        <ul>
                            <a href='<%#SEOHelper.GetCategoryUrl(Convert.ToInt32(Eval("CategoryId"))) %>'>
                                <%#Server.HtmlEncode(Eval("LocalizedName").ToString())%></a>
                        </ul>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</li>

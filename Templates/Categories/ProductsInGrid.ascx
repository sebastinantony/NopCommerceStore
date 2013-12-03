<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Templates.Categories.ProductsInGrid"
    CodeBehind="ProductsInGrid.ascx.cs" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductBox1" Src="~/Modules/ProductBox1.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="PriceRangeFilter" Src="~/Modules/PriceRangeFilter.ascx" %>
<%@ Register TagPrefix="nopCommerce" TagName="ProductSpecificationFilter" Src="~/Modules/ProductSpecificationFilter.ascx" %>
<div class="category-page" style ="display:none;">
    
    <div class="category-description">
        <asp:Literal runat="server" ID="lDescription"></asp:Literal>
    </div>
    <div class="clear">
    </div>
    <div class="sub-category-grid">
        <asp:DataList ID="dlSubCategories" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
            RepeatLayout="Table" OnItemDataBound="dlSubCategories_ItemDataBound" ItemStyle-CssClass="item-box" Visible="false">
            <ItemTemplate>
                <div class="sub-category-item">
                    <h2 class="category-title">
                        <asp:HyperLink ID="hlCategory" runat="server" />
                    </h2>
                    <div class="picture">
                        <asp:HyperLink ID="hlImageLink" runat="server" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div class="clear">
    </div>
    <asp:Panel runat="server" ID="pnlFeaturedProducts" class="featured-product-grid" Visible="false">
        <div class="title">
            <%=GetLocaleResourceString("Products.FeaturedProducts")%>
        </div>
        <div>
            <asp:DataList ID="dlFeaturedProducts" runat="server" RepeatColumns="2" RepeatDirection="Horizontal"
                RepeatLayout="Table" ItemStyle-CssClass="item-box">
                <ItemTemplate>
                    <nopCommerce:ProductBox1 ID="ctrlProductBox" Product='<%# Container.DataItem %>'
                        runat="server" />
                </ItemTemplate>
            </asp:DataList>
        </div>
    </asp:Panel>
    <div class="clear">
    </div>
    
    <div class="clear">
    </div>
    <asp:Panel runat="server" ID="pnlFilters" CssClass="product-filters" Visible ="false">
        <div class="filter-title">
            <asp:Label runat="server" ID="lblProductFilterTitle">
                <%=GetLocaleResourceString("Products.FilterOptionsTitle")%>
            </asp:Label>
        </div>
        <div class="filter-item">
            <nopCommerce:PriceRangeFilter ID="ctrlPriceRangeFilter" runat="server" />
        </div>
        <div class="filter-item">
            <nopCommerce:ProductSpecificationFilter ID="ctrlProductSpecificationFilter" runat="server"  Visible ="false"/>
        </div>
    </asp:Panel>
    <div class="clear">
    </div>
    
    <div class="clear">
    </div>
    <div class="product-pager">
        
    </div>
</div>



<div id="content">
        <!--Breadcrumb Part Start-->
        <% if (this.SettingManager.GetSettingValueBoolean("Media.CategoryBreadcrumbEnabled"))
        { %>
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
                </asp:Repeater>
            </div>
        <% } %>
        <!--Breadcrumb Part End-->
        <h1>
            <asp:Label ID="lblCatgory" runat="server" Text=""></asp:Label></h1>
        <asp:Panel runat="server" ID="pnlSorting" CssClass="product-filter">
        <div class="sort"><b><%=GetLocaleResourceString("ProductSorting.SortBy")%></b>
        <asp:DropDownList ID="ddlSorting" runat="server" OnSelectedIndexChanged="ddlSorting_SelectedIndexChanged"
            AutoPostBack="true" />
        </asp:Panel>
        <!--Product List Start-->
        <div class="product-grid">
        
    </div>
        <div class="product-list">
        <asp:DataList ID="dlProducts" runat="server" >
            <ItemTemplate>
                <nopCommerce:ProductBox1 ID="ctrlProductBox" Product='<%# Container.DataItem %>'
                    runat="server" />
            </ItemTemplate>
        </asp:DataList>
        </div>
        <!--Product List End-->
        <!--Pagination Part Start-->
        <div class="pagination">
          <nopCommerce:Pager runat="server" ID="productsPager" FirstButtonText="<% $NopResources:Pager.First %>"
            LastButtonText="<% $NopResources:Pager.Last %>" NextButtonText="<% $NopResources:Pager.Next %>"
            PreviousButtonText="<% $NopResources:Pager.Previous %>" CurrentPageText="Pager.CurrentPage" />
        </div>
        <!--Pagination Part End-->
      </div>
<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.SearchBoxControl"
    CodeBehind="SearchBox.ascx.cs" %>
<%--<script type="text/javascript">
    var location = window.location.origin;
    var searchPage = null;
    jQuery('#btnSearch').click(function () {
        searchPage = 'search.aspx?searchterms=' + document.getElementById('txtSearch').value;
        window.location.replace(location + searchPage);
    });
</script>--%>
<%--<div class="button-search" id="btnSearch"></div>

<input type="text" name="search" id="txtSearch" placeholder="Search" value="" />--%>
<asp:LinkButton ID="btnSearch" runat="server" OnClick="btnSearch_Click" CssClass="button-search"></asp:LinkButton>
<asp:TextBox ID="txtSearchTerms" runat="server"  placeholder="Search" />




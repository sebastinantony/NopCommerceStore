<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AccessPointSearchBox.ascx.cs" Inherits="NopSolutions.NopCommerce.Web.Modules.AccessPointSearchBox" %>
<script type="text/javascript">
    var location = window.location.origin;
    var searchPage = null;
    jQuery('#btnSearch').click(function () {
        searchPage = 'search.aspx?searchterms=' + document.getElementById('txtSearch').value;
        window.location.replace(location + searchPage);
    });
</script>
<div class="button-search" id="btnSearch"></div>
<input type="text" name="search" id="txtSearch" placeholder="Search" value="" />



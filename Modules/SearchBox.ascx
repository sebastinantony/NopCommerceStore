﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="NopSolutions.NopCommerce.Web.Modules.SearchBoxControl"
    CodeBehind="SearchBox.ascx.cs" %>
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



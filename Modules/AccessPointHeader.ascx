<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AccessPointHeader.ascx.cs"
    Inherits="NopSolutions.NopCommerce.Web.Modules.AccessPointHeader" %>
<%@ Register TagPrefix="nopCommerce" TagName="CategoryNavigation" Src="CategoryNavigation.ascx" %>
<header id="header">
      <section class="hsecond">
        <div id="logo"><a href="/index.aspx"><img src="../image/logo.png" title="Polishop" alt="Polishop" /></a></div>
        <div id="search">
          <div class="button-search"></div>
          <input type="text" name="search" placeholder="Search" value="" />
        </div>
        <div class="clear"></div>
      </section>
      <!--Top Menu(Horizontal Categories) Start-->
      <nav id="menu">
        <ul>
          <li class="home"><a title="Home" href="/index.aspx"><span>Home</span></a></li>
          <li class="categories_hor"><a>Categories</a>
            <nopCommerce:CategoryNavigation ID="ctrlCategoryNavigation" runat="server" />
          </li>
          <li><a target="_blank" href="#">Headers</a>
            <div>
              <ul>
                <li><a href="/index.aspx">Header Style 1</a></li>
                <li><a href="/index.aspx">Header Style 2</a></li>
                <li><a href="/index.aspx">Header Style 3</a></li>
              </ul>
            </div>
          </li>
          <li><a target="_blank" href="#">Menus</a>
            <div>
              <ul>
                <li><a href="/index.aspx">Horizontal Categories</a></li>
                <li><a href="/aboutus.aspx">Vertical Categories</a></li>
                <li><a href="/aboutus.aspx">Simple Categories</a></li>
              </ul>
            </div>
          </li>
          <li><a target="_blank" href="#">Sliders</a>
            <div>
              <ul>
                <li><a href="/index.aspx">Nivo Slider</a></li>
                <li><a href="/aboutus.aspx">Flex Slider</a></li>
              </ul>
            </div>
          </li>
          <li><a target="_blank" href="#">Footers</a>
            <div>
              <ul>
                <li><a href="/index.aspx">Footer Style 1</a></li>
                <li><a href="/aboutus.aspx">Footer Style 2</a></li>
                <li><a href="/aboutus.aspx">Footer Style 3</a></li>
              </ul>
            </div>
          </li>
          <li><a href="#">Custom Block</a>
            <div class="custom_block">
              <ul>
                <li>
                  <table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">
                    <tbody>
                      <tr>
                        <td><h3>You can insert any content here.</h3>
                          <p>&nbsp;</p></td>
                      </tr>
                      <tr>
                        <td><strong><img alt="responsive" src="../image/product/responsive.jpg" style="width: 250px; height: 150px; border-width: 0px; border-style: solid; float: left; margin-left: 10px; margin-right: 10px;" />Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing.</td>
                      </tr>
                    </tbody>
                  </table>
                </li>
              </ul>
            </div>
          </li>
          <li><a>My Account</a>
            <div>
              <ul>
                <li><a href="#">My Account</a></li>
                <li><a href="#">Order History</a></li>
                <li><a href="#" id="wishlist-total">Wish List (0)</a></li>
                <li><a href="#">Newsletter</a></li>
              </ul>
            </div>
          </li>
          <li><a>Information</a>
            <div>
              <ul>
                <li><a href="/aboutus.aspx">About Us</a></li>
                <li><a href="/aboutus.aspx">Delivery Information</a></li>
                <li><a href="/aboutus.aspx">Privacy Policy</a></li>
                <li><a href="/aboutus.aspx">Elements</a></li>
              </ul>
            </div>
          </li>
          <li><a href="/ContactUs.aspx">Contact Us</a></li>
        </ul>
      </nav>
      <!--Top Menu(Horizontal Categories) End-->
      <!-- Mobile Menu Start-->
      <nav id="menu" class="m-menu"> <span>Menu</span>
        <ul>
          <li class="categories"><a>Categories</a>
            <nopCommerce:CategoryNavigation ID="CategoryNavigation1" runat="server" />
          </li>
        </ul>
      </nav>
      <!-- Mobile Menu End-->
    </header>

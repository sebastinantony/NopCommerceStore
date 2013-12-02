<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AccessPointHeader.ascx.cs"
    Inherits="NopSolutions.NopCommerce.Web.Modules.AccessPointHeader" %>
<%@ Register TagPrefix="nopCommerce" TagName="CategoryNavigation" Src="CategoryNavigation.ascx" %>
<header id="header">
      <section class="hsecond">
        <div id="logo"><a href="index-2.html"><img src="../image/logo.png" title="Polishop" alt="Polishop" /></a></div>
        <div id="search">
          <div class="button-search"></div>
          <input type="text" name="search" placeholder="Search" value="" />
        </div>
        <!--Mini Shopping Cart Start-->
        <section id="cart">
          <div class="heading">
            <h4><img width="32" height="32" alt="" src="../image/cart-bg.png"></h4>
            <a><span id="cart-total">2 item(s) - $710.18</span></a> </div>
          <div class="content">
            <div class="mini-cart-info">
              <table>
                <tr>
                  <td class="image"><a href="product.html"><img src="../image/product/lotto-sports-shoes-white-47x47.jpg" alt="Lotto Sports Shoes" title="Lotto Sports Shoes" /></a></td>
                  <td class="name"><a href="product.html">Lotto Sports Shoes</a></td>
                  <td class="quantity">x&nbsp;1</td>
                  <td class="total">$589.50</td>
                  <td class="remove"><img src="../image/remove-small.png" alt="Remove" title="Remove" /></td>
                </tr>
                <tr>
                  <td class="image"><a href="product.html"><img src="../image/product/iphone_1-47x47.jpg" alt="iPhone 4s" title="iPhone 4s" /></a></td>
                  <td class="name"><a href="product.html">iPhone 4s</a></td>
                  <td class="quantity">x&nbsp;1</td>
                  <td class="total">$120.68</td>
                  <td class="remove"><img src="../image/remove-small.png" alt="Remove" title="Remove" /></td>
                </tr>
              </table>
            </div>
            <div class="mini-cart-total">
              <table>
                <tr>
                  <td class="right"><b>Sub-Total:</b></td>
                  <td class="right">$601.00
                    </td>
                </tr>
                <tr>
                  <td class="right"><b>Eco Tax (-2.00):</b></td>
                  <td class="right">$4.00</td>
                </tr>
                <tr>
                  <td class="right"><b>VAT (17.5%):</b></td>
                  <td class="right">$105.18</td>
                </tr>
                <tr>
                  <td class="right"><b>Total:</b></td>
                  <td class="right">$710.18</td>
                </tr>
              </table>
            </div>
            <div class="checkout"><a class="button" href="cart.html">View Cart</a> &nbsp; <a class="button" href="checkout.html">Checkout</a></div>
          </div>
        </section>
        <!--Mini Shopping Cart End-->
        <div class="clear"></div>
      </section>
      <!--Top Menu(Horizontal Categories) Start-->
      <nav id="menu">
        <ul>
          <li class="home"><a title="Home" href="index-2.html"><span>Home</span></a></li>
          <li class="categories_hor"><a>Categories</a>
            <nopCommerce:CategoryNavigation ID="ctrlCategoryNavigation" runat="server" />
          </li>
          <li><a target="_blank" href="#">Headers</a>
            <div>
              <ul>
                <li><a href="index-2.html">Header Style 1</a></li>
                <li><a href="header-footer-2.html">Header Style 2</a></li>
                <li><a href="header-footer-3.html">Header Style 3</a></li>
              </ul>
            </div>
          </li>
          <li><a target="_blank" href="#">Menus</a>
            <div>
              <ul>
                <li><a href="index-2.html">Horizontal Categories</a></li>
                <li><a href="header-footer-2.html">Vertical Categories</a></li>
                <li><a href="header-footer-3.html">Simple Categories</a></li>
              </ul>
            </div>
          </li>
          <li><a target="_blank" href="#">Sliders</a>
            <div>
              <ul>
                <li><a href="index-2.html">Nivo Slider</a></li>
                <li><a href="header-footer-2.html">Flex Slider</a></li>
              </ul>
            </div>
          </li>
          <li><a target="_blank" href="#">Footers</a>
            <div>
              <ul>
                <li><a href="index-2.html">Footer Style 1</a></li>
                <li><a href="header-footer-2.html">Footer Style 2</a></li>
                <li><a href="header-footer-3.html">Footer Style 3</a></li>
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
                <li><a href="about-us.html">About Us</a></li>
                <li><a href="about-us.html">Delivery Information</a></li>
                <li><a href="about-us.html">Privacy Policy</a></li>
                <li><a href="elements.html">Elements</a></li>
              </ul>
            </div>
          </li>
          <li><a href="contact-us.html">Contact Us</a></li>
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

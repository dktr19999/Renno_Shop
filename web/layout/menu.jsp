
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<div class="offcanvas_menu">
    <div class="canvas_open">
        <a href="javascript:void(0)"><i class="ion-navicon"></i></a>
    </div>
    <div class="offcanvas_menu_wrapper">
        <div class="canvas_close">
            <a href="javascript:void(0)"><i class="ion-android-close"></i></a>  
        </div>
        <div class="welcome_text">
            <ul>
                <li><span>Free Shipping: </span>Take advantage of our time to save the event </li>
                 <li><span>Free Returns: </span> Satisfaction Guarantee</li>
            </ul>
        </div>
        <div class="top_right">
            <ul>
                <li class="top_links"><a href="#">My Account <i class="ion-chevron-down"></i></a>
                    <ul class="dropdown_links">
                        <c:if test="${sessionScope.user.user_name!=null}">
                            <li><a href="my-account.html">${sessionScope.user.user_name}</a></li>
                            </c:if>

                            <c:if test="${sessionScope.user.user_name == null}">
                                <li><a href="user?action=myaccount">My Account</a></li>
                                </c:if>
   
                            <c:if test="${sessionScope.user == null}">
                                <li><a href="user?action=login">Login</a></li>
                                </c:if>
   
                            <c:if test="${sessionScope.user != null}">
                                <li><a href="user?action=login">Logout</a></li>
                                </c:if>
   
                            <c:if test="${fn: toUpperCase(sessionScope.user.isAdmin) == 'TRUE'}">
                                <li><a href="dashboard">Manage</a></li>
                                </c:if>
                        </ul>
                </li> 
            </ul>
        </div> 
        <div class="search_bar">
            <form action="product?action=search" method="POST">
                <input name="text" placeholder="Tìm kiếm..." type="text">
                <button type="submit"><i class="ion-ios-search-strong"></i></button>
            </form>
        </div>
        <div class="cart_area">
            <div class="cart_link">
                <a href="cart?action=showcart"><i class="fa fa-shopping-basket">${sessionScope.size}</i>Shopping Cart</a>
            </div>
        </div>
        <div id="menu" class="text-left ">
            <ul class="offcanvas_main_menu">
                <li class="active">
                    <a href="home">Homepage</a>
                </li>
                <li class="active">
                    <a href="product?action=load">Product</a>
                </li>
                <li class="menu-item-has-children">
                    <a href="about">We</a>
                </li>
                <li class="menu-item-has-children">
                    <a href="contact">Contact</a>
                </li>
            </ul>
        </div>
        <div class="offcanvas_footer">
            <span><a href="#"><i class="fa fa-envelope-o"></i> hotmail@gmail.com</a></span>
            <ul>
                <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li class="pinterest"><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
            </ul>
        </div>
    </div>
</div>
<!--Offcanvas menu area end-->

<!--header area start-->
<header class="header_area header_three">
    <!--header top start-->
    <div class="header_top">
        <div class="container-fluid">   
            <div class="row align-items-center">
                <div class="col-lg-7 col-md-12">
                    <div class="welcome_text">
                        <ul>
                            <li><span>Free Shipping:</span>Take advantage of our time to save the event </li>
                            <li><span>Free Returns</span> Satisfaction Guarantee</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-5 col-md-12">
                    <div class="top_right text-right">
                        <ul>

                            <c:if test="${sessionScope.user != null}">
                                <li class="top_links"><a href="#">Hello ${sessionScope.user.user_name}<i class="ion-chevron-down"></i></a>
                                    </c:if>
                                    <c:if test="${sessionScope.user == null}">
                                <li class="top_links"><a href="#">Login<i class="ion-chevron-down"></i></a>
                                    </c:if>
                                <ul class="dropdown_links">
                                    <c:if test="${sessionScope.user != null}">
                                        <li><a href="user?action=myaccount">My Account</a></li>
                                        </c:if>

                                    <c:if test="${fn: toUpperCase(sessionScope.user.isAdmin) == 'TRUE'}">
                                        <li><a href="dashboard">Manage</a></li>
                                        </c:if>
                                        <c:if test="${sessionScope.user == null}">
                                            <li><a href="user?action=login">Login</a></li>
                                            </c:if>
   
                                        <c:if test="${sessionScope.user != null}">
                                            <li><a href="user?action=logout">Logout</a></li>
                                            </c:if>
   
   
                                    </ul>
                                </li>
                            </ul>
                    </div>   
                </div>
            </div>
        </div>
    </div>
    <!--header top start-->

    <!--header middel start-->
    <div class="header_middel">
        <div class="container-fluid">
            <div class="middel_inner">
                <div class="row align-items-center">
                    <div class="col-lg-4">
                        <div class="search_bar">
                            <form action="product?action=search" method="POST">
                                <input name="text" placeholder="Tìm kiếm..." type="text">
                                <button type="submit"><i class="ion-ios-search-strong"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="logo">
                            <a href="home"><img src="assets/img/logo/logo1.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cart_area">
                            <div class="cart_link">
                                <a href="cart?action=showcart"><i class="fa fa-shopping-basket"></i>${sessionScope.size} products</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="horizontal_menu">
                <div class="left_menu">
                    <div class="main_menu"> 
                        <nav>  
                            <ul>
                                <li><a href="home">Trang chủ<i class="fa"></i></a>
                                </li>
                                <li class="mega_items"><a href="product?action=load">Product</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="right_menu">
                    <div class="main_menu">
                        <nav>
                            <ul>
                                <li><a href="about">We</a></li>
                                <li><a href="contact">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--header middel end-->

    <!--header bottom satrt-->
    <div class="header_bottom sticky-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                    <div class="main_menu_inner">
                        <div class="main_menu">
                            <nav>
                                <ul>
                                    <li class="active"><a href="home">Homepage</a></li>
                                    <li><a href="product?action=load">Product</a></li>
                                    <li><a href="about">We</a></li>
                                    <li><a href="contact">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--header bottom end-->
</header>
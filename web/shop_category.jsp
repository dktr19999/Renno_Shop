<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shop category</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS 
        ========================= -->


        <!-- Plugins CSS -->
        <link rel="stylesheet" href="assets/css/plugins.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">

    </head>

    <body>

        <!-- Main Wrapper Start -->
        <!--Offcanvas menu area start-->
        <div class="off_canvars_overlay"></div>
        <jsp:include page="layout/menu.jsp"/>

        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area">
            <div class="container">   
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="home">Home</a></li>
                                <li>/</li>
                                <li>Store</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!--shop  area start-->
        <div class="shop_area shop_reverse">
            <div class="container">
                <div class="shop_inner_area">
                    <div class="row">
                        <div class="col-lg-3 col-md-12">
                            <!--sidebar widget start-->
                            <div class="sidebar_widget">
                                <div class="widget_list widget_categories">
                                    <h2>Category</h2>
                                    <ul>
                                        <li><a href="product?action=search">All</a></li>
                                        <c:forEach items="${CategoryData}" var="c">
                                            <li><a href="product?action=listByCategory&category_id=${c.category_id}">${c.category_name}</a></li>
                                            </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <!--sidebar widget end-->
                        </div>
                        <div class="col-lg-9 col-md-12">
                            <!--shop wrapper start-->
                            <!--shop toolbar start-->
                            <div class="shop_title">
                                <h2>Product</h2>
                            </div>
                            <div class="shop_toolbar_wrapper" style="border:none">
                                <div class="dropdown ">
                                    <button style="color: #000; background-color: #ffffff;border:none; font-family: sans-serif;" class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Filter
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="product?action=sort&type=low">Price from low to high</a>
                                        <a class="dropdown-item" href="product?action=sort&type=high">Price from high to low</a>
                                        <a class="dropdown-item" href="product?action=sort&type=a-z">A-Z</a>
                                    </div>
                                </div>
                            </div>
                            <div class="row shop_wrapper">
                                <c:forEach items="${ProductData}" var="p">
                                    <div class="col-lg-4 col-md-4 col-12 ">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a class="primary_img" href="product?action=productdetail&product_id=${p.product_id}"><img src="${p.img}" alt=""></a>

                                                <div class="quick_button">
                                                    <a href="product?action=productdetail&product_id=${p.product_id}"title="quick_view">Product View</a>
                                                </div>
                                            </div>

                                            <div class="product_content grid_content">
                                                <h3><a href="product?action=productdetail&product_id=${p.product_id}">${p.product_name}</a></h3>
                                                <span class="current_price">${p.product_price}</span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <c:set var="page" value="${page}"/>
                            <div class="shop_toolbar t_bottom" style="border: none;">
                                <div class="pagination">
                                    <ul>
                                        <c:forEach begin="${1}" end="${num}" var="i">
                                            <li class="${i==page?"current":""}"><a href="product?page=${i}">${i}</a></li>
                                            </c:forEach>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--shop  area end-->

        <!--footer area start-->
        <jsp:include page="layout/footer.jsp"/>
        <!--footer area end-->

        <!-- Plugins JS -->
        <script src="assets/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>
    </body>

</html>
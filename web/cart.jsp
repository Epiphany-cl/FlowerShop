<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>一个普普通通的花店</title>
    <meta name="robots" content="noindex, follow"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Place favicon.png in the root directory -->
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon"/>
    <!-- Font Icons css -->
    <link rel="stylesheet" href="css/font-icons.css">
    <!-- plugins css -->
    <link rel="stylesheet" href="css/plugins.css">
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="css/responsive.css">
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Add your site or application content here -->

<!-- Body main wrapper start -->
<div class="body-wrapper">

    <!-- HEADER AREA START (header-3) -->
    <header class="ltn__header-area ltn__header-3 section-bg-6">
        <jsp:include page="Header.jsp"/>
    </header>
    <!-- HEADER AREA END -->

    <!-- Utilize Cart Menu Start -->
    <div id="ltn__utilize-cart-menu" class="ltn__utilize ltn__utilize-cart-menu">
        <jsp:include page="CartMenu.jsp"/>
    </div>
    <!-- Utilize Cart Menu End -->

    <!-- Utilize Mobile Menu Start -->
    <div id="ltn__utilize-mobile-menu" class="ltn__utilize ltn__utilize-mobile-menu">
        <jsp:include page="MobileMenu.jsp"/>
    </div>
    <!-- Utilize Mobile Menu End -->

    <div class="ltn__utilize-overlay"></div>

    <!-- BREADCRUMB AREA START -->
    <div class="ltn__breadcrumb-area ltn__breadcrumb-area-4 ltn__breadcrumb-color-white---">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__breadcrumb-inner text-center">
                        <h1 class="ltn__page-title">购物车</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="index.jsp">主页</a></li>
                                <li>购物车</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA END -->

    <!-- SHOPING CART AREA START -->
    <!-- 购物车 AREA START -->
    <div class="liton__shoping-cart-area mb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping-cart-inner">
                        <div class="shoping-cart-table table-responsive">
                            <table class="table">
                                <tbody>
                                <tr>
                                    <input class="data-cartId" type="hidden" value="0">
                                    <input class="data-flowerId" type="hidden" value="0">
                                    <td onclick="deleteCartItem(this)" class="cart-product-remove">x</td>
                                    <td class="cart-product-image">
                                        <a onclick="cartJsp_productDetailView(this)" href="javascript:void(0)"><img src="img/product/1.png" alt="#"></a>
                                    </td>
                                    <td class="cart-product-info">
                                        <h4><a onclick="cartJsp_productDetailView(this)" href="javascript:void(0)">99 red roses</a></h4>
                                    </td>
                                    <td class="cart-product-price">$149.00</td>
                                    <td class="cart-product-quantity">
                                        <div class="cart-plus-minus">
                                            <input type="text" value="2" name="qtybutton" class="cart-plus-minus-box">
                                        </div>
                                    </td>
                                    <td class="cart-product-subtotal">$298.00</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="shoping-cart-total mt-50">
                            <h4>购物车总计</h4>
                            <table class="table">
                                <tbody>
                                <tr>
                                    <td>购物车小计</td>
                                    <td class="cart-total">$0.00</td>
                                </tr>
                                <tr>
                                    <td>运费</td>
                                    <td class="carriage-price">$0.00</td>
                                </tr>
                                <tr>
                                    <td><strong>订单总额</strong></td>
                                    <td><strong class="cart-total-price">$0.00</strong></td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="btn-wrapper text-right">
                                <a href="checkout.jsp" class="theme-btn-1 btn btn-effect-1">继续结账</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- SHOPING CART AREA END -->

    <!-- BRAND LOGO AREA START -->
    <div class="ltn__brand-logo-area  ltn__brand-logo-1 section-bg-1 pt-35 pb-35 plr--5">
        <jsp:include page="BrandLOGO.jsp"/>
    </div>
    <!-- BRAND LOGO AREA END -->

    <!-- FOOTER AREA START -->
    <footer class="ltn__footer-area ">
        <jsp:include page="Footer.jsp"/>
    </footer>
    <!-- FOOTER AREA END -->

</div>
<!-- Body main wrapper end -->

<!-- All JS Plugins -->
<script src="js/plugins.js"></script>
<!-- Main JS -->
<script src="js/main.js"></script>

</body>
</html>


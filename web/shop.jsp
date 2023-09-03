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
                        <h1 class="ltn__page-title">商店</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="index.jsp">首页</a></li>
                                <li>带左侧边栏的商店</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA END -->

    <!-- PRODUCT DETAILS AREA START -->
    <!-- 产品详细信息 AREA START -->
    <div class="ltn__product-area ">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 order-lg-2 mb-100">
                    <div class="ltn__shop-options">
                        <ul>
                            <li>
                                <div class="showing-product-number text-right">
                                    <span>显示 20 个结果中的 9 个</span>
                                </div>
                            </li>
                            <li>
                                <div class="short-by text-center">
                                    <select class="nice-select">
                                        <option>默认排序</option>
                                        <option>按新品排序</option>
                                        <option>按价格从低到高排序</option>
                                        <option>按价格从高到低排序</option>
                                    </select>
                                </div>
                                <%--切换模式按钮--%>
                                <div class="ltn__grid-list-tab-menu ">
                                    <div class="nav">
                                        <a class="active show" data-toggle="tab" href="#liton_product_grid"><i
                                                class="icon-grid"></i></a>
                                        <a data-toggle="tab" href="#liton_product_list"><i class="icon-menu"></i></a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="liton_product_grid">
                            <div class="ltn__product-tab-content-inner ltn__product-grid-view">
                                <div class="row">
                                    <!-- ltn__product-item -->
                                    <div class="col-xl-4 col-sm-6 col-12">
                                        <div class="ltn__product-item text-center">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/2.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-1">Hot</li>
                                                    </ul>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Premium
                                                    Joyful</a></h2>
                                                <div class="product-price">
                                                    <span>$16</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ltn__product-item -->
                                    <div class="col-xl-4 col-sm-6 col-12">
                                        <div class="ltn__product-item text-center">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/1.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-2">10%</li>
                                                    </ul>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Pink Flower
                                                    Tree</a></h2>
                                                <div class="product-price">
                                                    <span>$18</span>
                                                    <del>$21</del>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ltn__product-item -->
                                    <div class="col-xl-4 col-sm-6 col-12">
                                        <div class="ltn__product-item text-center">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/4.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-1">Hot</li>
                                                    </ul>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Red Rose
                                                    Bouquet</a></h2>
                                                <div class="product-price">
                                                    <span>$16</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ltn__product-item -->
                                    <div class="col-xl-4 col-sm-6 col-12">
                                        <div class="ltn__product-item text-center">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/6.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-2">10%</li>
                                                    </ul>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Pink Flower
                                                    Tree</a></h2>
                                                <div class="product-price">
                                                    <span>$22</span>
                                                    <del>$25</del>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ltn__product-item -->
                                    <div class="col-xl-4 col-sm-6 col-12">
                                        <div class="ltn__product-item text-center">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/7.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-1">Hot</li>
                                                    </ul>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Red Rose
                                                    Bouquet</a></h2>
                                                <div class="product-price">
                                                    <span>$16</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ltn__product-item -->
                                    <div class="col-xl-4 col-sm-6 col-12">
                                        <div class="ltn__product-item text-center">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/8.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-2">10%</li>
                                                    </ul>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Pink Flower
                                                    Tree</a></h2>
                                                <div class="product-price">
                                                    <span>$18</span>
                                                    <del>$21</del>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ltn__product-item -->
                                    <div class="col-xl-4 col-sm-6 col-12">
                                        <div class="ltn__product-item text-center">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/4.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-1">Hot</li>
                                                    </ul>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Premium
                                                    Joyful</a></h2>
                                                <div class="product-price">
                                                    <span>$16</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ltn__product-item -->
                                    <div class="col-xl-4 col-sm-6 col-12">
                                        <div class="ltn__product-item text-center">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/1.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-2">10%</li>
                                                    </ul>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Pink Flower
                                                    Tree</a></h2>
                                                <div class="product-price">
                                                    <span>$18</span>
                                                    <del>$21</del>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ltn__product-item -->
                                    <div class="col-xl-4 col-sm-6 col-12">
                                        <div class="ltn__product-item text-center">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/5.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-1">Hot</li>
                                                    </ul>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Red Rose
                                                    Bouquet</a></h2>
                                                <div class="product-price">
                                                    <span>$16</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--  -->
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="liton_product_list">
                            <div class="ltn__product-tab-content-inner ltn__product-list-view">
                                <div class="row">
                                    <!-- ltn__product-item -->
                                    <div class="col-lg-12">
                                        <div class="ltn__product-item">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/2.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-1">Hot</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Red Rose
                                                    Bouquet</a></h2>
                                                <div class="product-price">
                                                    <span>$16</span>
                                                </div>
                                                <div class="product-ratting">
                                                    <ul>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-brief">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                                        Recusandae asperiores sit odit nesciunt, aliquid, deleniti non
                                                        et ut dolorem!</p>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ltn__product-item -->
                                    <div class="col-lg-12">
                                        <div class="ltn__product-item">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/1.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-2">12%</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Red Rose
                                                    Bouquet</a></h2>
                                                <div class="product-price">
                                                    <span>$16</span>
                                                    <del>$19</del>
                                                </div>
                                                <div class="product-ratting">
                                                    <ul>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-brief">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                                        Recusandae asperiores sit odit nesciunt, aliquid, deleniti non
                                                        et ut dolorem!</p>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ltn__product-item -->
                                    <div class="col-lg-12">
                                        <div class="ltn__product-item">
                                            <div class="product-img">
                                                <a href="product-details.jsp"><img src="img/product/4.png" alt="#"></a>
                                                <div class="product-badge">
                                                    <ul>
                                                        <li class="badge-1">Hot</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title"><a href="product-details.jsp">Red Rose
                                                    Bouquet</a></h2>
                                                <div class="product-price">
                                                    <span>$16</span>
                                                </div>
                                                <div class="product-ratting">
                                                    <ul>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                        <li><a href="#"><i class="icon-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-brief">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                                        Recusandae asperiores sit odit nesciunt, aliquid, deleniti non
                                                        et ut dolorem!</p>
                                                </div>
                                                <div class="product-hover-action product-hover-action-2">
                                                    <ul>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-magnifier"></i>
                                                            </a>
                                                        </li>
                                                        <li class="add-to-cart">
                                                            <a href="#" title="Add to Cart" data-toggle="modal"
                                                               data-target="#add_to_cart_modal">
                                                                <span class="cart-text d-none d-xl-block">Add to Cart</span>
                                                                <span class="d-block d-xl-none"><i
                                                                        class="icon-handbag"></i></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" title="Quick View" data-toggle="modal"
                                                               data-target="#quick_view_modal">
                                                                <i class="icon-shuffle"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--  -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ltn__pagination-area text-center">
                        <div class="ltn__pagination ltn__pagination-2">
                            <ul>
                                <li><a href="#"><i class="icon-arrow-left"></i></a></li>
                                <li><a href="#">1</a></li>
                                <li class="active"><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#"><i class="icon-arrow-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3  mb-100">
                    <aside class="sidebar ltn__shop-sidebar">
                        <!-- Search Widget -->
                        <div class="widget ltn__search-widget">
                            <form action="#">
                                <input type="text" name="search" placeholder="Search your keyword...">
                                <button type="submit"><i class="icon-magnifier"></i></button>
                            </form>
                        </div>
                        <!-- Price Filter Widget -->
                        <div class="widget ltn__price-filter-widget">
                            <h4 class="ltn__widget-title">Price</h4>
                            <div class="price_filter">
                                <div class="price_slider_amount">
                                    <input type="submit" value="Your range:"/>
                                    <input type="text" class="amount" name="price" placeholder="Add Your Price"/>
                                </div>
                                <div class="slider-range"></div>
                            </div>
                        </div>
                        <!-- Category Widget -->
                        <div class="widget ltn__menu-widget">
                            <h4 class="ltn__widget-title">categories</h4>
                            <ul>
                                <li><a href="#">Clothing</a></li>
                                <li><a href="#">Bags</a></li>
                                <li><a href="#">Shoes</a></li>
                                <li><a href="#">Jewelry</a></li>
                                <li><a href="#">Accessories</a></li>
                                <li><a href="#">Food / Drink Store</a></li>
                                <li><a href="#">Gift Store</a></li>
                                <li><a href="#">Accessories</a></li>
                                <li><a href="#">Watch</a></li>
                                <li><a href="#">Uncategorized</a></li>
                                <li><a href="#">Other</a></li>
                            </ul>
                        </div>
                        <!-- Color Widget -->
                        <div class="widget ltn__color-widget">
                            <h4 class="ltn__widget-title">Color</h4>
                            <ul>
                                <li class="theme"><a href="#"></a></li>
                                <li class="green-2"><a href="#"></a></li>
                                <li class="blue-2"><a href="#"></a></li>
                                <li class="white"><a href="#"></a></li>
                                <li class="red"><a href="#"></a></li>
                                <li class="yellow"><a href="#"></a></li>

                                <!-- <li class="black"><a href="#"></a></li>
                                <li class="silver"><a href="#"></a></li>
                                <li class="gray"><a href="#"></a></li>
                                <li class="maroon"><a href="#"></a></li>
                                <li class="olive"><a href="#"></a></li>
                                <li class="lime"><a href="#"></a></li>
                                <li class="aqua"><a href="#"></a></li>
                                <li class="teal"><a href="#"></a></li>
                                <li class="blue"><a href="#"></a></li>
                                <li class="navy"><a href="#"></a></li>
                                <li class="fuchsia"><a href="#"></a></li>
                                <li class="purple"><a href="#"></a></li>
                                <li class="pink"><a href="#"></a></li>
                                <li class="nude"><a href="#"></a></li>
                                <li class="orange"><a href="#"></a></li> -->
                            </ul>
                        </div>
                        <!-- Size Widget -->
                        <div class="widget ltn__size-widget">
                            <h4 class="ltn__widget-title">Size</h4>
                            <ul>
                                <li><a href="#">S</a></li>
                                <li><a href="#">M</a></li>
                                <li><a href="#">L</a></li>
                                <li><a href="#">XL</a></li>
                                <li><a href="#">XXL</a></li>
                            </ul>
                        </div>
                        <!-- Tagcloud Widget -->
                        <div class="widget ltn__tagcloud-widget">
                            <h4 class="ltn__widget-title">Tags</h4>
                            <ul>
                                <li><a href="#">Popular</a></li>
                                <li><a href="#">desgin</a></li>
                                <li><a href="#">ux</a></li>
                                <li><a href="#">usability</a></li>
                                <li><a href="#">develop</a></li>
                                <li><a href="#">icon</a></li>
                                <li><a href="#">Car</a></li>
                                <li><a href="#">Service</a></li>
                                <li><a href="#">Repairs</a></li>
                                <li><a href="#">Auto Parts</a></li>
                                <li><a href="#">Oil</a></li>
                                <li><a href="#">Dealer</a></li>
                                <li><a href="#">Oil Change</a></li>
                                <li><a href="#">Body Color</a></li>
                            </ul>
                        </div>
                        <!-- Top Rated Product Widget -->
                        <div class="widget ltn__top-rated-product-widget d-none">
                            <h4 class="ltn__widget-title ltn__widget-title-border---">Top Rated Product</h4>
                            <ul>
                                <li>
                                    <div class="top-rated-product-item clearfix">
                                        <div class="top-rated-product-img">
                                            <a href="product-details.jsp"><img src="img/product/1.png" alt="#"></a>
                                        </div>
                                        <div class="top-rated-product-info">
                                            <div class="product-ratting">
                                                <ul>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h6><a href="product-details.jsp">Mixel Solid Seat Cover</a></h6>
                                            <div class="product-price">
                                                <span>$49.00</span>
                                                <del>$65.00</del>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top-rated-product-item clearfix">
                                        <div class="top-rated-product-img">
                                            <a href="product-details.jsp"><img src="img/product/2.png" alt="#"></a>
                                        </div>
                                        <div class="top-rated-product-info">
                                            <div class="product-ratting">
                                                <ul>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h6><a href="product-details.jsp">Brake Conversion Kit</a></h6>
                                            <div class="product-price">
                                                <span>$49.00</span>
                                                <del>$65.00</del>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="top-rated-product-item clearfix">
                                        <div class="top-rated-product-img">
                                            <a href="product-details.jsp"><img src="img/product/3.png" alt="#"></a>
                                        </div>
                                        <div class="top-rated-product-info">
                                            <div class="product-ratting">
                                                <ul>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                    <li><a href="#"><i class="icon-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h6><a href="product-details.jsp">Coil Spring Conversion</a></h6>
                                            <div class="product-price">
                                                <span>$49.00</span>
                                                <del>$65.00</del>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- Banner Widget -->
                        <div class="widget ltn__banner-widget d-none">
                            <a href="shop.html"><img src="#" alt="#"></a>
                        </div>

                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- PRODUCT DETAILS AREA END -->

    <!-- BRAND LOGO AREA START -->
    <div class="ltn__brand-logo-area  ltn__brand-logo-1 section-bg-1 pt-35 pb-35 plr--5">
        <div class="container-fluid">
            <div class="row ltn__brand-logo-active">
                <div class="col-lg-12">
                    <div class="ltn__brand-logo-item">
                        <img src="img/brand-logo/1.png" alt="Brand Logo">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="ltn__brand-logo-item">
                        <img src="img/brand-logo/2.png" alt="Brand Logo">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="ltn__brand-logo-item">
                        <img src="img/brand-logo/3.png" alt="Brand Logo">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="ltn__brand-logo-item">
                        <img src="img/brand-logo/4.png" alt="Brand Logo">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="ltn__brand-logo-item">
                        <img src="img/brand-logo/5.png" alt="Brand Logo">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="ltn__brand-logo-item">
                        <img src="img/brand-logo/1.png" alt="Brand Logo">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="ltn__brand-logo-item">
                        <img src="img/brand-logo/2.png" alt="Brand Logo">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BRAND LOGO AREA END -->

    <!-- FOOTER AREA START -->
    <footer class="ltn__footer-area ">
        <div class="footer-top-area  section-bg-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-2 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget footer-menu-widget clearfix">
                            <h4 class="footer-title">My Accoout</h4>
                            <div class="footer-menu">
                                <ul>
                                    <li><a href="account.html">My account</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                    <li><a href="contact.html">Contact us</a></li>
                                    <li><a href="cart.jsp">Shopping Cart</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget footer-menu-widget clearfix">
                            <h4 class="footer-title">Quick Links</h4>
                            <div class="footer-menu">
                                <ul>
                                    <li><a href="locations.html">Store Location</a></li>
                                    <li><a href="order-tracking.html">Orders Tracking</a></li>
                                    <li><a href="product-details.jsp">Size Guide</a></li>
                                    <li><a href="account.html">My account</a></li>
                                    <li><a href="faq.html">FAQs</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget footer-menu-widget clearfix">
                            <h4 class="footer-title">Information</h4>
                            <div class="footer-menu">
                                <ul>
                                    <li><a href="contact.html">Privacy Page</a></li>
                                    <li><a href="about.html">About us</a></li>
                                    <li><a href="contact.html">Careers</a></li>
                                    <li><a href="faq.html">Delivery Inforamtion</a></li>
                                    <li><a href="contact.html">Term & Conditions</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget footer-menu-widget clearfix">
                            <h4 class="footer-title">Customer Service</h4>
                            <div class="footer-menu">
                                <ul>
                                    <li><a href="product-details.jsp">Shipping Policy</a></li>
                                    <li><a href="contact.html">Help & Contact Us</a></li>
                                    <li><a href="account.html">Returns & Refunds</a></li>
                                    <li><a href="shop.html">Online Stores</a></li>
                                    <li><a href="contact.html">Terms and Conditions</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-sm-6 col-12">
                        <div class="footer-widget footer-about-widget">
                            <h4 class="footer-title">About Our Shop</h4>
                            <div class="footer-logo d-none">
                                <div class="site-logo">
                                    <img src="img/logo.png" alt="Logo">
                                </div>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmo incididunt ut
                                labore et dolore</p>
                            <div class="footer-address">
                                <ul>
                                    <li>
                                        <div class="footer-address-icon">
                                            <i class="icon-location-pin"></i>
                                        </div>
                                        <div class="footer-address-info">
                                            <p>Brooklyn, New York, United States</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="footer-address-icon">
                                            <i class="icon-phone"></i>
                                        </div>
                                        <div class="footer-address-info">
                                            <p><a href="tel:+0123-456789">+0123-456789</a></p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="footer-address-icon">
                                            <i class="icon-envelope"></i>
                                        </div>
                                        <div class="footer-address-info">
                                            <p><a href="mailto:example@example.com">example@example.com</a></p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="ltn__social-media mt-20 d-none">
                                <ul>
                                    <li><a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#" title="Linkedin"><i class="fab fa-linkedin"></i></a></li>
                                    <li><a href="#" title="Youtube"><i class="fab fa-youtube"></i></a></li>
                                </ul>
                            </div>
                            <div class="footer-payment-img">
                                <img src="img/icons/payment-6.png" alt="Payment Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ltn__copyright-area ltn__copyright-2 section-bg-5">
            <div class="container ltn__border-top-2">
                <div class="row">
                    <div class="col-md-6 col-12">
                        <div class="footer-copyright-left">
                            <div class="ltn__copyright-design clearfix">
                                <p>&copy; <span class="current-year"></span> - Just For You</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-12 align-self-center">
                        <div class="footer-copyright-right text-right">
                            <div class="ltn__copyright-menu d-none">
                                <ul>
                                    <li><a href="#">Terms & Conditions</a></li>
                                    <li><a href="#">Claim</a></li>
                                    <li><a href="#">Privacy & Policy</a></li>
                                </ul>
                            </div>
                            <div class="ltn__social-media ">
                                <ul>
                                    <li><a href="#" title="Facebook"><i class="icon-social-facebook"></i></a></li>
                                    <li><a href="#" title="Twitter"><i class="icon-social-twitter"></i></a></li>
                                    <li><a href="#" title="Pinterest"><i class="icon-social-pinterest"></i></a></li>
                                    <li><a href="#" title="Instagram"><i class="icon-social-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- FOOTER AREA END -->

    <!-- MODAL AREA START (Quick View Modal) -->
    <div class="ltn__modal-area ltn__quick-view-modal-area">
        <div class="modal fade" id="quick_view_modal" tabindex="-1">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            <!-- <i class="fas fa-times"></i> -->
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="ltn__quick-view-modal-inner">
                            <div class="modal-product-item">
                                <div class="row">
                                    <div class="col-lg-6 col-12">
                                        <div class="modal-product-img">
                                            <img src="img/product/4.png" alt="#">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-12">
                                        <div class="modal-product-info shop-details-info pl-0">
                                            <h3>Pink Flower Tree Red</h3>
                                            <div class="product-price-ratting mb-20">
                                                <ul>
                                                    <li>
                                                        <div class="product-price">
                                                            <span>$49.00</span>
                                                            <del>$65.00</del>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="product-ratting">
                                                            <ul>
                                                                <li><a href="#"><i class="icon-star"></i></a></li>
                                                                <li><a href="#"><i class="icon-star"></i></a></li>
                                                                <li><a href="#"><i class="icon-star"></i></a></li>
                                                                <li><a href="#"><i class="icon-star"></i></a></li>
                                                                <li><a href="#"><i class="icon-star"></i></a></li>
                                                                <li class="review-total"><a href="#"> ( 95 Reviews )</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="modal-product-brief">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos
                                                    repellendus repudiandae incidunt quidem pariatur expedita, quo quis
                                                    modi tempore non.</p>
                                            </div>
                                            <div class="modal-product-meta ltn__product-details-menu-1 mb-20">
                                                <ul>
                                                    <li>
                                                        <div class="ltn__color-widget clearfix">
                                                            <strong class="d-meta-title">Color</strong>
                                                            <ul>
                                                                <li class="theme"><a href="#"></a></li>
                                                                <li class="green-2"><a href="#"></a></li>
                                                                <li class="blue-2"><a href="#"></a></li>
                                                                <li class="white"><a href="#"></a></li>
                                                                <li class="red"><a href="#"></a></li>
                                                                <li class="yellow"><a href="#"></a></li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="ltn__size-widget clearfix mt-25">
                                                            <strong class="d-meta-title">Size</strong>
                                                            <ul>
                                                                <li><a href="#">S</a></li>
                                                                <li><a href="#">M</a></li>
                                                                <li><a href="#">L</a></li>
                                                                <li><a href="#">XL</a></li>
                                                                <li><a href="#">XXL</a></li>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="ltn__product-details-menu-2 product-cart-wishlist-btn mb-30">
                                                <ul>
                                                    <li>
                                                        <div class="cart-plus-minus">
                                                            <input type="text" value="02" name="qtybutton"
                                                                   class="cart-plus-minus-box">
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="theme-btn-1 btn btn-effect-1 d-add-to-cart"
                                                           title="Add to Cart" data-toggle="modal"
                                                           data-target="#add_to_cart_modal">
                                                            <span>ADD TO CART</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="btn btn-effect-1 d-add-to-wishlist"
                                                           title="Add to Cart" data-toggle="modal"
                                                           data-target="#liton_wishlist_modal">
                                                            <i class="icon-heart"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="ltn__social-media mb-30">
                                                <ul>
                                                    <li class="d-meta-title">Share:</li>
                                                    <li><a href="#" title="Facebook"><i
                                                            class="icon-social-facebook"></i></a></li>
                                                    <li><a href="#" title="Twitter"><i class="icon-social-twitter"></i></a>
                                                    </li>
                                                    <li><a href="#" title="Pinterest"><i
                                                            class="icon-social-pinterest"></i></a></li>
                                                    <li><a href="#" title="Instagram"><i
                                                            class="icon-social-instagram"></i></a></li>

                                                </ul>
                                            </div>
                                            <div class="modal-product-meta ltn__product-details-menu-1 mb-30 d-none">
                                                <ul>
                                                    <li><strong>SKU:</strong> <span>12345</span></li>
                                                    <li>
                                                        <strong>Categories:</strong>
                                                        <span>
                                                            <a href="#">Flower</a>
                                                        </span>
                                                    </li>
                                                    <li>
                                                        <strong>Tags:</strong>
                                                        <span>
                                                            <a href="#">Love</a>
                                                            <a href="#">Flower</a>
                                                            <a href="#">Heart</a>
                                                        </span>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="ltn__safe-checkout d-none">
                                                <h5>Guaranteed Safe Checkout</h5>
                                                <img src="img/icons/payment-2.png" alt="Payment Image">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- MODAL AREA END -->

    <!-- MODAL AREA START (Add To Cart Modal) -->
    <div class="ltn__modal-area ltn__add-to-cart-modal-area">
        <div class="modal fade" id="add_to_cart_modal" tabindex="-1">
            <div class="modal-dialog modal-md" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="ltn__quick-view-modal-inner">
                            <div class="modal-product-item">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="modal-add-to-cart-content clearfix">
                                            <div class="modal-product-img">
                                                <img src="img/product/1.png" alt="#">
                                            </div>
                                            <div class="modal-product-info">
                                                <h5><a href="product-details.jsp">Heart's Desire</a></h5>
                                                <p class="added-cart"><i class="fa fa-check-circle"></i> Successfully
                                                    added to your Cart</p>
                                                <div class="btn-wrapper">
                                                    <a href="cart.jsp" class="theme-btn-1 btn btn-effect-1">View
                                                        Cart</a>
                                                    <a href="checkout.html" class="theme-btn-2 btn btn-effect-2">Checkout</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- additional-info -->
                                        <div class="additional-info d-none--">
                                            <p>We want to give you <b>10% discount</b> for your first order, <br> Use
                                                (fiama10) discount code at checkout</p>
                                            <div class="payment-method">
                                                <img src="img/icons/payment.png" alt="#">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- MODAL AREA END -->

    <!-- MODAL AREA START (Wishlist Modal) -->
    <div class="ltn__modal-area ltn__add-to-cart-modal-area">
        <div class="modal fade" id="liton_wishlist_modal" tabindex="-1">
            <div class="modal-dialog modal-md" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="ltn__quick-view-modal-inner">
                            <div class="modal-product-item">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="modal-product-img">
                                            <img src="img/product/7.png" alt="#">
                                        </div>
                                        <div class="modal-product-info">
                                            <h5><a href="product-details.jsp">Brake Conversion Kit</a></h5>
                                            <p class="added-cart"><i class="fa fa-check-circle"></i> Successfully added
                                                to your Wishlist</p>
                                            <div class="btn-wrapper">
                                                <a href="wishlist.html" class="theme-btn-1 btn btn-effect-1">View
                                                    Wishlist</a>
                                            </div>
                                        </div>
                                        <!-- additional-info -->
                                        <div class="additional-info d-none">
                                            <p>We want to give you <b>10% discount</b> for your first order, <br> Use
                                                discount code at checkout</p>
                                            <div class="payment-method">
                                                <img src="img/icons/payment.png" alt="#">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- MODAL AREA END -->

</div>
<!-- Body main wrapper end -->

<!-- preloader area start -->
<div class="preloader d-none" id="preloader">
    <div class="preloader-inner">
        <div class="spinner">
            <div class="dot1"></div>
            <div class="dot2"></div>
        </div>
    </div>
</div>
<!-- preloader area end -->

<!-- All JS Plugins -->
<script src="js/plugins.js"></script>
<!-- Main JS -->
<script src="js/main.js"></script>

</body>
</html>
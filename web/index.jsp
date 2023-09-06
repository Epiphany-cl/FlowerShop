<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <%--
    ${sessionScope.user.username}
    ${sessionScope.user.password}
    --%>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>一个普普通通的花店</title>
    <meta name="robots" content="noindex, follow"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Place favicon.png in the root directory -->
    <!-- 将favicon.png放在根目录中 -->
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon"/><!-- 网站logo -->
    <!-- Font Icons css -->
    <!-- 字体图标css -->
    <link rel="stylesheet" href="css/font-icons.css">
    <!-- plugins css -->
    <!-- 插件 css -->
    <link rel="stylesheet" href="css/plugins.css">
    <!-- Main Stylesheet -->
    <!-- 主样式表 -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive css -->
    <!-- 响应式 css -->
    <link rel="stylesheet" href="css/responsive.css">
</head>

<body>
<!--浏览器版本过低警告-->
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- 在此处添加您的网站或应用程序内容 -->
<!-- Add your site or application content here -->

<!-- 正文主包装启动 -->
<!-- Body main wrapper start -->
<!--wrapper:n.包装纸，包装材料；宽大长衣，浴衣；<美>（雪茄的）外卷烟叶；（可得到税收优惠等的）捆绑金融商品-->
<div class="body-wrapper">

    <!-- HEADER AREA START (header-3) -->
    <!-- 头区开始 (header-3) -->
    <header class="ltn__header-area ltn__header-3 section-bg-6">
        <jsp:include page="Header.jsp"/>
    </header>
    <!-- HEADER AREA END -->

    <!-- Utilize Cart Menu Start -->
    <!-- 使用购物车菜单开始 -->
    <div id="ltn__utilize-cart-menu" class="ltn__utilize ltn__utilize-cart-menu">
        <jsp:include page="CartMenu.jsp"/>
    </div>
</div>
<!-- Utilize Cart Menu End -->

<!-- Utilize Mobile Menu Start -->
<!-- 响应式布局中 手机菜单 -->
<div id="ltn__utilize-mobile-menu" class="ltn__utilize ltn__utilize-mobile-menu">
    <jsp:include page="MobileMenu.jsp"/>
</div>
<!-- Utilize Mobile Menu End -->

<div class="ltn__utilize-overlay"></div>

<!-- SLIDER AREA START (slider-6) -->
<!-- 有上滑文字效果的海报 -->
<div class="ltn__slider-area ltn__slider-3 ltn__slider-6 section-bg-1">
    <div class="ltn__slide-one-active slick-slide-arrow-1 slick-slide-dots-1 arrow-white---">
        <!-- ltn__slide-item  -->
        <div class="ltn__slide-item ltn__slide-item-8 text-color-white---- bg-image bg-overlay-theme-black-80---"
             data-bg="img/slider/1.jpg">
            <div class="ltn__slide-item-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 align-self-center">
                            <div class="slide-item-info">
                                <div class="slide-item-info-inner ltn__slide-animation">
                                    <div class="slide-item-info">
                                        <div class="slide-item-info-inner ltn__slide-animation">
                                            <h1 class="slide-title animated">新鲜花卉</h1>
                                            <h6 class="slide-sub-title ltn__body-color slide-title-line animated">
                                                这里有自然美丽的花卉</h6>
                                            <div class="slide-brief animated">
                                                <p>郁金香绽放春日间，
                                                    丰盈花瓣绚丽艳。
                                                    色彩斑斓如梦幻，
                                                    微风中摇曳生姿态。

                                                    大地唤醒芬芳梦，
                                                    万紫千红绽芳华。
                                                    岁月更迭情不移，
                                                    郁金香，永恒的韶华。

                                                    在园中绽放光彩，
                                                    为春天歌唱赞美。
                                                    短暂飘逸如流星，
                                                    却在心头留印记。

                                                    郁金香，你是艺术，
                                                    大自然的创作奇迹。
                                                    你的美丽永流传，
                                                    在时间的涟漪里。</p>
                                            </div>
                                            <div class="btn-wrapper animated">
                                                <a href="shop-grid.jsp" class="theme-btn-1 btn btn-round">立即购买</a>
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
        <!-- ltn__slide-item  -->
        <div class="ltn__slide-item ltn__slide-item-8 text-color-white---- bg-image bg-overlay-theme-black-80---"
             data-bg="img/slider/3.jpg">
            <div class="ltn__slide-item-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 align-self-center">
                            <div class="slide-item-info">
                                <div class="slide-item-info-inner ltn__slide-animation">
                                    <div class="slide-item-info">
                                        <div class="slide-item-info-inner ltn__slide-animation"><h1
                                                class="slide-title animated">美丽花卉</h1>
                                            <h6 class="slide-sub-title ltn__body-color slide-title-line animated">
                                                这里有自然美丽的花卉</h6>
                                            <div class="slide-brief animated">
                                                <p>粉色郁金香，柔情绰约间，
                                                    花瓣如丝绒，温柔婉转间。
                                                    春风拂过，轻舞飘然，
                                                    微笑盈开，梦幻盛开间。

                                                    粉色的渐变，如爱情的柔情，
                                                    深浅交织，情感在绽放。
                                                    芬芳四溢，香气袭人，
                                                    仿佛心间涌动的温暖思念。

                                                    在花园中，你是焦点，
                                                    在阳光下，你是宠儿。
                                                    粉色郁金香，娇美多情，
                                                    用花语述说，爱意无需言。</p>
                                            </div>
                                            <div class="btn-wrapper animated">
                                                <a href="shop-grid.jsp" class="theme-btn-1 btn btn-round">立即购买</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="slide-item-img">
                                <img src="img/slider/41-1.png" alt="#">
                                <span class="call-to-circle-1"></span>
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  -->
    </div>
</div>
<!-- SLIDER AREA END -->

<!-- FEATURE AREA START ( Feature - 3) -->
<!-- 服务提示 START ( Feature - 3) -->
<div class="ltn__feature-area mt-100 mt--65">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="ltn__feature-item-box-wrap ltn__feature-item-box-wrap-2 ltn__border section-bg-6">
                    <div class="ltn__feature-item ltn__feature-item-8">
                        <div class="ltn__feature-icon">
                            <img src="img/icons/svg/8-trolley.svg" alt="#">
                        </div>
                        <div class="ltn__feature-info">
                            <h4>免费送货</h4>
                            <p>订单满 $49.00 免费送货</p>
                        </div>
                    </div>
                    <div class="ltn__feature-item ltn__feature-item-8">
                        <div class="ltn__feature-icon">
                            <img src="img/icons/svg/9-money.svg" alt="#">
                        </div>
                        <div class="ltn__feature-info">
                            <h4>15天退货</h4>
                            <p>退款保证</p>
                        </div>
                    </div>
                    <div class="ltn__feature-item ltn__feature-item-8">
                        <div class="ltn__feature-icon">
                            <img src="img/icons/svg/10-credit-card.svg" alt="#">
                        </div>
                        <div class="ltn__feature-info">
                            <h4>安全结账</h4>
                            <p>Paypal保护</p>
                        </div>
                    </div>
                    <div class="ltn__feature-item ltn__feature-item-8">
                        <div class="ltn__feature-icon">
                            <img src="img/icons/svg/11-gift-card.svg" alt="#">
                        </div>
                        <div class="ltn__feature-info">
                            <h4>优惠与赠品</h4>
                            <p>订单满即可获赠</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- FEATURE AREA END -->

<!-- BANNER AREA START -->
<!-- 条幅 AREA START -->
<!-- 英文图片 删了 -->
<!--<div class="ltn__banner-area  mt-80">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6">
                <div class="ltn__banner-item">
                    <div class="ltn__banner-img">
                        <a href="shop.jsp"><img src="img/banner/1.jpg" alt="Banner Image"></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="ltn__banner-item">
                    <div class="ltn__banner-img">
                        <a href="shop.jsp"><img src="img/banner/2.jpg" alt="Banner Image"></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="ltn__banner-item">
                    <div class="ltn__banner-img">
                        <a href="shop.jsp"><img src="img/banner/3.jpg" alt="Banner Image"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>-->
<!-- BANNER AREA END -->

<!-- PRODUCT AREA START -->
<!-- 产品展示 -->
<div class="ltn__product-area  pt-65 pb-40">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area text-center">
                    <h1 class="section-title section-title-border">热门商品</h1>
                </div>
            </div>
        </div>
        <div id="index_product" class="row justify-content-center">
            <!-- ltn__product-item -->
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="ltn__product-item text-center">
                    <input type="hidden" class="flower_id" value="0">
                    <div class="product-img">
                        <a href="javascript:void(0)" onclick="productDetailView(this)"><img src="img/product/1.png" alt="#"></a>
                        <div class="product-badge">
                            <ul>
                                <li class="badge-2">10%</li>
                            </ul>
                        </div>
                        <div class="product-hover-action product-hover-action-2">
                            <ul>
                                <li>
                                    <a onclick="quickView(this)" href="javascript:void(0)" title="快速查看" data-toggle="modal"
                                       data-target="#quick_view_modal">
                                        <i class="icon-magnifier"></i>
                                    </a>
                                </li>
                                <li class="add-to-cart">
                                    <a onclick="quickAddCart(this)" href="javascript:void(0)"  title="添加到购物车" data-toggle="modal"
                                       data-target="#add_to_cart_modal">
                                        <span class="cart-text d-none d-xl-block">添加到购物车</span>
                                        <span class="d-block d-xl-none"><i class="icon-handbag"></i></span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-info">
                        <h2 class="product-title"><a href="javascript:void(0)" onclick="productDetailView(this)">粉红花树</a></h2>
                        <div class="product-price">
                            <span>$18.00</span>
                            <del>$21.00</del>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- PRODUCT SLIDER AREA END -->

<!-- BANNER AREA START -->
<!-- 广告 -->
<!--<div class="ltn__banner-area ">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="ltn__banner-item">
                    <div class="ltn__banner-img">
                        <a href="shop.jsp"><img src="img/banner/6.jpg" alt="Banner Image"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="ltn__banner-item">
                    <div class="ltn__banner-img">
                        <a href="shop.jsp"><img src="img/banner/7.jpg" alt="Banner Image"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>-->
<!-- BANNER AREA END -->

<!-- PRODUCT SLIDER AREA START -->
<!-- 左右滑动的产品展示 -->
<%--
<div class="ltn__product-slider-area  pt-60 pb-40">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area text-center">
                    <h1 class="section-title section-title-border">热门产品</h1>
                </div>
            </div>
        </div>
        <div class="row ltn__product-slider-item-four-active slick-arrow-1">
            <!-- ltn__product-item -->
            <div class="col-12">
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
                                    <a href="#" title="快速查看" data-toggle="modal"
                                       data-target="#quick_view_modal">
                                        <i class="icon-magnifier"></i>
                                    </a>
                                </li>
                                <li class="add-to-cart">
                                    <a href="#" title="添加到购物车" data-toggle="modal"
                                       data-target="#add_to_cart_modal">
                                        <span class="cart-text d-none d-xl-block">添加到购物车</span>
                                        <span class="d-block d-xl-none"><i class="icon-handbag"></i></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="快速查看" data-toggle="modal"
                                       data-target="#quick_view_modal">
                                        <i class="icon-shuffle"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-info">
                        <h2 class="product-title"><a href="product-details.jsp">粉红花树</a></h2>
                        <div class="product-price">
                            <span>$18.00</span>
                            <del>$21.00</del>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-12">
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
                                        <span class="d-block d-xl-none"><i class="icon-handbag"></i></span>
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
                        <h2 class="product-title"><a href="product-details.jsp">Premium Joyful</a></h2>
                        <div class="product-price">
                            <span>$18.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-12">
                <div class="ltn__product-item text-center">
                    <div class="product-img">
                        <a href="product-details.jsp"><img src="img/product/3.png" alt="#"></a>
                        <div class="product-badge">
                            <ul>
                                <li class="badge-2">12%</li>
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
                                        <span class="d-block d-xl-none"><i class="icon-handbag"></i></span>
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
                        <h2 class="product-title"><a href="product-details.jsp">The White Rose</a></h2>
                        <div class="product-price">
                            <span>$16.00</span>
                            <del>$19.00</del>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-12">
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
                                        <span class="d-block d-xl-none"><i class="icon-handbag"></i></span>
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
                        <h2 class="product-title"><a href="product-details.jsp">Red Rose Bouquet</a></h2>
                        <div class="product-price">
                            <span>$20.00</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-12">
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
                                        <span class="d-block d-xl-none"><i class="icon-handbag"></i></span>
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
                        <h2 class="product-title"><a href="product-details.jsp">Heart's Desire</a></h2>
                        <div class="product-price">
                            <span>$15.00</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
--%>
<!-- PRODUCT SLIDER AREA END -->

<!-- BANNER AREA START -->
<!-- 大广告栏 -->
<div class="ltn__banner-area ">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="ltn__banner-item">
                    <div class="ltn__banner-img">
                        <a href="shop-grid.jsp"><img src="img/banner/10.jpg" alt="Banner Image"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- BANNER AREA END -->

<!-- BLOG AREA START (blog-3) -->
<!-- 博客 AREA START (blog-3) -->
<div class="ltn__blog-area  pt-60 pb-30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area text-center">
                    <h1 class="section-title section-title-border">最新新闻</h1>
                </div>
            </div>
        </div>
        <div class="row  ltn__blog-slider-one-active slick-arrow-1">
            <!-- Blog Item -->
            <div class="col-lg-12">
                <div class="ltn__blog-item">
                    <div class="ltn__blog-img">
                        <a href="404.html"><img src="img/blog/1.jpg" alt="#"></a>
                    </div>
                    <div class="ltn__blog-brief">
                        <div class="ltn__blog-meta">
                            <ul>
                                <li class="ltn__blog-author d-none">
                                    <a href="#">by: Admin</a>
                                </li>
                                <li>
                                    <span> Nov 18, 2020</span>
                                </li>
                                <li class="ltn__blog-comment">
                                    <a href="#"><i class="icon-speech"></i> 2</a>
                                </li>
                            </ul>
                        </div>
                        <h3 class="ltn__blog-title blog-title-line"><a
                                href="404.html">盛夏花海绽放：城市公园迎来多彩花卉季节</a></h3>
                    </div>
                </div>
            </div>
            <!-- Blog Item -->
            <div class="col-lg-12">
                <div class="ltn__blog-item">
                    <div class="ltn__blog-img">
                        <a href="404.html"><img src="img/blog/2.jpg" alt="#"></a>
                    </div>
                    <div class="ltn__blog-brief">
                        <div class="ltn__blog-meta">
                            <ul>
                                <li class="ltn__blog-author d-none">
                                    <a href="#">by: Admin</a>
                                </li>
                                <li>
                                    <span> Nov 18, 2020</span>
                                </li>
                                <li class="ltn__blog-comment">
                                    <a href="#"><i class="icon-speech"></i> 2</a>
                                </li>
                            </ul>
                        </div>
                        <h3 class="ltn__blog-title blog-title-line"><a href="404.html">
                            花艺大师在市中心举办展览，倾情演绎花与艺术的完美融合</a></h3>
                    </div>
                </div>
            </div>
            <!-- Blog Item -->
            <div class="col-lg-12">
                <div class="ltn__blog-item">
                    <div class="ltn__blog-img">
                        <a href="404.html"><img src="img/blog/3.jpg" alt="#"></a>
                    </div>
                    <div class="ltn__blog-brief">
                        <div class="ltn__blog-meta">
                            <ul>
                                <li class="ltn__blog-author d-none">
                                    <a href="#">by: Admin</a>
                                </li>
                                <li>
                                    <span> Nov 18, 2020</span>
                                </li>
                                <li class="ltn__blog-comment">
                                    <a href="#"><i class="icon-speech"></i> 2</a>
                                </li>
                            </ul>
                        </div>
                        <h3 class="ltn__blog-title blog-title-line"><a
                                href="404.html">环保倡导：可持续种植技术助力打造绿色鲜花产业链</a></h3>
                    </div>
                </div>
            </div>
            <!-- Blog Item -->
            <div class="col-lg-12">
                <div class="ltn__blog-item">
                    <div class="ltn__blog-img">
                        <a href="404.html"><img src="img/blog/4.jpg" alt="#"></a>
                    </div>
                    <div class="ltn__blog-brief">
                        <div class="ltn__blog-meta">
                            <ul>
                                <li class="ltn__blog-author d-none">
                                    <a href="#">by: Admin</a>
                                </li>
                                <li>
                                    <span> Nov 18, 2020</span>
                                </li>
                                <li class="ltn__blog-comment">
                                    <a href="#"><i class="icon-speech"></i> 2</a>
                                </li>
                            </ul>
                        </div>
                        <h3 class="ltn__blog-title blog-title-line"><a
                                href="404.html">浪漫求婚季：男子999朵玫瑰定制爱情宣言</a></h3>
                    </div>
                </div>
            </div>
            <!-- Blog Item -->
            <div class="col-lg-12">
                <div class="ltn__blog-item">
                    <div class="ltn__blog-img">
                        <a href="404.html"><img src="img/blog/5.jpg" alt="#"></a>
                    </div>
                    <div class="ltn__blog-brief">
                        <div class="ltn__blog-meta">
                            <ul>
                                <li class="ltn__blog-author d-none">
                                    <a href="#">by: Admin</a>
                                </li>
                                <li>
                                    <span> Nov 18, 2020</span>
                                </li>
                                <li class="ltn__blog-comment">
                                    <a href="#"><i class="icon-speech"></i> 2</a>
                                </li>
                            </ul>
                        </div>
                        <h3 class="ltn__blog-title blog-title-line"><a
                                href="404.html">花博会开幕：百余品种花卉竞相绽放引来观众</a></h3>
                    </div>
                </div>
            </div>
            <!--  -->
        </div>
    </div>
</div>
<!-- BLOG AREA END -->

<!-- BRAND LOGO AREA START -->
<!-- 品牌 LOGO AREA START -->
<div class="ltn__brand-logo-area  ltn__brand-logo-1 section-bg-1 pt-35 pb-35 plr--5">
    <jsp:include page="BrandLOGO.jsp"/>
</div>
<!-- BRAND LOGO AREA END -->

<!-- FOOTER AREA START -->
<!-- 页脚 AREA START -->
<footer class="ltn__footer-area ">
    <jsp:include page="Footer.jsp"/>
</footer>
<!-- FOOTER AREA END -->

<!-- MODAL AREA START (Quick View Modal) -->
<!-- MODAL AREA START (快速查看模式) -->
<div class="ltn__modal-area ltn__quick-view-modal-area">
    <jsp:include page="QuickView.jsp"/>
</div>
<!-- MODAL AREA END -->

<!-- MODAL AREA START (Add To Cart Modal) -->
<!-- 添加购物车提醒 -->
<div class="ltn__modal-area ltn__add-to-cart-modal-area">
    <jsp:include page="AddToCart.jsp"/>
</div>
<!-- MODAL AREA END -->

<!-- MODAL AREA START (Wishlist Modal) -->
<!-- 手机模式的愿望清单 好像没用-->
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

<!-- Body main wrapper end -->

<!-- preloader area start -->
<!-- 预加载程序 area start -->
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
<!-- All JS 插件 -->
<script src="js/plugins.js"></script>
<!-- Main JS -->
<script src="js/main.js"></script>

</body>
</html>


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
                        <h1 class="ltn__page-title">商品</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="index.jsp">首页</a></li>
                                <li>商品</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA END -->

    <!-- SHOP DETAILS AREA START -->
    <div class="ltn__shop-details-area pb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="ltn__shop-details-inner">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="ltn__shop-details-img-gallery ltn__shop-details-img-gallery-2">
                                    <div class="ltn__shop-details-large-img">
                                        <div class="single-large-img">
                                            <%--点开的详细图片--%>
                                            <a href="img/product/1.png" data-rel="lightcase:myCollection">
                                                <%--展示图片--%>
                                                <img src="img/product/1.png" alt="Image">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
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
                                        </ul>
                                    </div>
                                    <div class="modal-product-brief">
                                        <p style="text-indent: 2em;">
                                            在璀璨的花海中，99朵红玫瑰犹如热情的心跳，诉说着无尽的情感。
                                            每一朵花瓣都是真挚的情意，每一束芬芳都是对爱情的深情厚意。
                                            这束红玫瑰，仿佛是时间的见证，见证了岁月中的每一个美好瞬间，见证了两颗心灵相守的坚贞誓言。
                                            红玫瑰，不仅仅是花瓣的交织，更是爱情的交融。
                                            献上这束玫瑰，愿它传达我无言的情感，如同红色的花语，深情而炽热。
                                            让我们共同演绎爱的华章，将这份情感永远珍藏在岁月的长河中。
                                        </p>
                                    </div>
                                    <div class="ltn__product-details-menu-2 product-cart-wishlist-btn mb-30">
                                        <ul>
                                            <li>
                                                <div class="cart-plus-minus">
                                                    <input type="text" value="1" name="qtybutton"
                                                           class="cart-plus-minus-box">
                                                </div>
                                            </li>
                                            <li>
                                                <a onclick="productDetailAddCartAndNum(this)"
                                                   href="javascript:void(0)"
                                                   class="theme-btn-1 btn btn-effect-1 d-add-to-cart"
                                                   title="Add to Cart"
                                                   data-toggle="modal"
                                                   data-target="#add_to_cart_modal">
                                                    <span>添加到购物车</span>
                                                </a>
                                            </li>
                                            <%--<li>
                                                <a href="#" class="btn btn-effect-1 d-add-to-wishlist"
                                                   title="Add to Cart" data-toggle="modal"
                                                   data-target="#add_to_cart_modal">
                                                    <i class="icon-heart"></i>
                                                </a>
                                            </li>--%>
                                        </ul>
                                    </div>
                                    <div class="ltn__social-media mb-30">
                                        <ul>
                                            <li class="d-meta-title">分享:</li>
                                            <li><a href="404.html" title="Facebook"><i class="icon-social-facebook"></i></a>
                                            </li>
                                            <li><a href="404.html" title="Twitter"><i
                                                    class="icon-social-twitter"></i></a></li>
                                            <li><a href="404.html" title="Pinterest"><i
                                                    class="icon-social-pinterest"></i></a>
                                            </li>
                                            <li><a href="404.html" title="Instagram"><i
                                                    class="icon-social-instagram"></i></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="modal-product-meta ltn__product-details-menu-1 mb-30">
                                        <ul>
                                            <li>
                                                商品编号:
                                                <span id="flower_id">
                                                    12345
                                                </span>
                                            </li>
                                            <li>
                                                分类:
                                                <span id="flower_categories">
                                                    Flower
                                                </span>
                                            </li>
                                            <li>
                                                标签:
                                                <span id="flower_tags">
                                                    Love,
                                                    Flower,
                                                    Heart
                                                </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- SHOP DETAILS AREA END -->

    <!-- SHOP DETAILS TAB AREA START -->
    <!-- 商店详细信息选项卡 AREA START -->
    <div class="ltn__shop-details-tab-area pb-60">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__shop-details-tab-inner">
                        <div class="ltn__shop-details-tab-menu">
                            <div class="nav">
                                <a class="active show" data-toggle="tab" href="#liton_tab_details_1_1">描述</a>
                                <!-- <a data-toggle="tab" href="#liton_tab_details_1_3" class="">Comments</a> -->
                                <a data-toggle="tab" href="#liton_tab_details_1_4" class="">运输</a>
                                <!-- <a data-toggle="tab" href="#liton_tab_details_1_5" class="">Size Chart</a> -->
                            </div>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade active show" id="liton_tab_details_1_1">
                                <div class="ltn__shop-details-tab-content-inner">
                                    <p style="text-indent: 2em;">
                                        在四季的律动中，99朵红玫瑰如烈焰般绽放，为世界绘制了一幅美丽而浪漫的画面。这不仅仅是一束花，更是一份真挚的情感，一份承诺与坚守的象征。
                                    </p>

                                    <p style="text-indent: 2em;">
                                        每一朵红玫瑰都是爱的化身，每一片花瓣都沐浴着岁月的阳光和雨露。这些花瓣轻轻地叠加在一起，如同时光的镜头，记录下了无数甜蜜的瞬间。当你握着这束红玫瑰，仿佛可以感受到那份温暖和慰藉。
                                    </p>

                                    <p style="text-indent: 2em;">
                                        红玫瑰是热情和浪漫的象征，是对爱情最美好的表达。它们的鲜艳如同初恋般的悸动，花瓣的光泽宛如爱人眼中的星光。每一朵花都是心意的延伸，每一片叶都是情感的呼吸。这束99朵红玫瑰不仅代表着数量的多寡，更承载了对爱情无限的留恋与期待。
                                    </p>

                                    <p style="text-indent: 2em;">
                                        将这束红玫瑰赠予挚爱，就是将心灵的深情与真诚呈现在世人面前。它们不仅仅是花束，更是一份内心最深处的情感展示。无需言语，红玫瑰已经传达了一切。它们是对过去时光的感恩，对未来岁月的憧憬。
                                    </p>

                                    <p style="text-indent: 2em;">
                                        99朵红玫瑰，正如一段美丽的爱情旅程。每一朵花都是一个记忆，每一片叶都是一个故事。它们在花语的编织下，述说着爱情的美好，也诠释着生命的意义。无论风雨如何，红玫瑰的馨香永不褪色，正如爱情在岁月的流转中更显珍贵。
                                    </p>

                                    <p style="text-indent: 2em;">
                                        在这束红玫瑰的芬芳中，隐藏着无数的情感和希望。它们是情人间的默契，是灵魂深处的交汇。愿这束红玫瑰见证爱情的坚贞，成为岁月中最美的风景，将幸福永远留存在心间。
                                    </p>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="liton_tab_details_1_4"><h4 class="title-2">
                                我们商店的运输政策</h4>
                                <p>
                                    我们的运输政策：在我们鲜花店，我们致力于为您提供快速可靠的运输服务，以确保您的鲜花能够及时送达。</p>
                                <ul>
                                    <li>
                                        1-2个工作日内送达：我们通常会在您下单后的1-2个工作日内完成送货，以确保您尽快收到新鲜的花束。如果您在当天结束前下单，通常可以在第二天送达。
                                    </li>
                                    <li><a href="#">30天退款保证</a>：我们对我们的花束质量充满信心。如果您对收到的花束不满意，请在收货后的30天内与我们联系，我们将提供全额退款或重新送达新的花束。
                                    </li>
                                    <li>
                                        24/7在线支持：无论您何时需要帮助或有疑问，我们的在线支持团队都将为您提供帮助。无论是关于订单状态、送货时间还是任何其他问题，我们都随时待命。
                                    </li>
                                    <li>
                                        新鲜花材保证：我们承诺为您精心挑选和包装花材，以确保花束的新鲜和品质。每一束花都经过严格的质量控制，以呈现最佳的视觉和香气效果。
                                    </li>
                                    <li>
                                        配送范围：我们提供的配送范围涵盖了大部分地区。在结账时，请提供准确的送货地址，以便我们准确计算运费并安排送货。
                                    </li>
                                    <li>
                                        特殊要求：如果您有特殊的送货要求或定制需求，请在下单时注明，我们将尽力满足您的要求。
                                    </li>
                                </ul>
                                <p>
                                    无论是庆祝特殊场合还是表达关怀，我们都愿意为您提供最好的鲜花和服务。感谢您选择我们的鲜花店！</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- SHOP DETAILS TAB AREA END -->


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

    <!-- MODAL AREA START (Add To Cart Modal) -->
    <div class="ltn__modal-area ltn__add-to-cart-modal-area">
        <jsp:include page="AddToCart.jsp"/>
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
                                            <h5><a href="product-details.html">Brake Conversion Kit</a></h5>
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


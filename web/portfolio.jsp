<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>一个普普通通的花店</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Place favicon.png in the root directory -->
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon" />
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
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
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
        <jsp:include page="cart.jsp"/>
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
                        <h1 class="ltn__page-title">作品集</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="index.jsp">主页</a></li>
                                <li>作品集</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA END -->

    <!-- Gallery area start -->
    <div class="ltn__gallery-area mb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__gallery-menu ltn__gallery-menu-2">
                        <div class="ltn__gallery-filter-menu text-uppercase mb-40">
                            <button data-filter="*" class="active">全部</button>
                            <button data-filter=".filter_category_1">White</button>
                            <button data-filter=".filter_category_2">Red</button>
                            <button data-filter=".filter_category_3">Yellow</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Portfolio Wrapper Start -->
            <!-- (ltn__gallery-info-hide) Class for 'ltn__gallery-item-info' not showing -->
            <div class="ltn__gallery-active row ltn__gallery-style-2 ltn__gallery-info-hide---">
                <div class="ltn__gallery-sizer col-1"></div><%--画廊--%>

                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_3 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="img/product/1.png" data-rel="lightcase:myCollection">
                                <img src="img/product/1.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fas fa-search"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Portfolio Link </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_2 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="#ltn__inline_description_1" data-rel="lightcase:myCollection">
                                <img src="img/product/2.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="far fa-file-alt"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Inline Description </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_1 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="//www.youtube.com/embed/6v2L2UGZJAM?version=3" data-rel="lightcase:myCollection">
                                <img src="img/product/3.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fab fa-youtube"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Youtube Video </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_3 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="https://player.vimeo.com/video/47362400" data-rel="lightcase:myCollection">
                                <img src="img/product/4.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fab fa-vimeo-v"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Vimeo Video </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_2 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="media/1.mp4" data-rel="lightcase:myCollection">
                                <img src="img/product/5.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fas fa-video"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">HTML5 Video </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_1 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1575.9076122223137!2d144.96590401578402!3d-37.81779982944919!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642b6af832249%3A0xe39e415e49a7c44e!2sFlinders%20Street%20Railway%20Station!5e0!3m2!1sen!2sbd!4v1598113544515!5m2!1sen!2sbd" data-rel="lightcase:myCollection">
                                <img src="img/product/6.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fas fa-map-marker-alt"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Google Map </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_3 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="img/product/1.png" data-rel="lightcase:myCollection" data-lc-caption="Your caption Here">
                                <img src="img/product/7.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fab fa-acquisitions-incorporated"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Image Caption </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_2 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="img/product/no-image.png" data-rel="lightcase:myCollection">
                                <img src="img/product/8.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fas fa-not-equal"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Not Found</a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_1 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="img/product/1.png" data-rel="lightcase:myCollection">
                                <img src="img/product/9.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fas fa-search"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Portfolio Link </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_3 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="img/product/1.png" data-rel="lightcase:myCollection">
                                <img src="img/product/10.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fas fa-search"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Portfolio Link </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_2 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="img/product/1.png" data-rel="lightcase:myCollection">
                                <img src="img/product/1.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fas fa-search"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Portfolio Link </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>
                <!-- gallery-item -->
                <div class="ltn__gallery-item filter_category_1 col-lg-3 col-sm-6 col-12">
                    <div class="ltn__gallery-item-inner">
                        <div class="ltn__gallery-item-img">
                            <a href="img/product/1.png" data-rel="lightcase:myCollection">
                                <img src="img/product/2.png" alt="Image">
                                <span class="ltn__gallery-action-icon">
                                    <i class="fas fa-search"></i>
                                </span>
                            </a>
                        </div>
                        <div class="ltn__gallery-item-info">
                            <h4><a href="portfolio-details.html">Portfolio Link </a></h4>
                            <p>Web Design & Development</p>
                        </div>
                    </div>
                </div>                
            </div>

            <div id="ltn__inline_description_1" style="display: none;">
                <h4 class="first">This content comes from a hidden element on that page</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam quis mi eu elit tempor facilisis id et neque. Nulla sit amet sem sapien. Vestibulum imperdiet porta ante ac ornare. Nulla et lorem eu nibh adipiscing ultricies nec at lacus. Cras laoreet ultricies sem, at blandit mi eleifend aliquam. Nunc enim ipsum, vehicula non pretium varius, cursus ac tortor.</p>
                <p>Vivamus fringilla congue laoreet. Quisque ultrices sodales orci, quis rhoncus justo auctor in. Phasellus dui eros, bibendum eu feugiat ornare, faucibus eu mi. Nunc aliquet tempus sem, id aliquam diam varius ac. Maecenas nisl nunc, molestie vitae eleifend vel.</p>
            </div>

            <div class="btn-wrapper text-center">
                <a href="#" class="btn btn-transparent btn-effect-3 btn-border">LOAD MORE +</a>
            </div>

            <!-- pagination start -->
            <!-- 
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__pagination text-center margin-top-50">
                        <ul>
                            <li class="arrow-icon"><a href="#"> &leftarrow; </a></li>
                            <li class="active"><a href="blog.html">1</a></li>
                            <li><a href="blog-2.html">2</a></li>
                            <li><a href="blog-2.html">3</a></li>
                            <li><a href="blog-2.html">...</a></li>
                            <li><a href="blog-2.html">10</a></li>
                            <li class="arrow-icon"><a href="#"> &rightarrow; </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            -->
            <!-- pagination end -->

        </div>
    </div>
    <!-- Gallery area end -->

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
                                    <li><a href="checkout.jsp">Checkout</a></li>
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
                                    <li><a href="shop.jsp">Online Stores</a></li>
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
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmo incididunt ut labore et dolore</p>
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

</div>
<!-- Body main wrapper end -->

    <!-- All JS Plugins -->
    <script src="js/plugins.js"></script>
    <!-- Main JS -->
    <script src="js/main.js"></script>
  
</body>
</html>
/*================================================
[  Table of contents  ]
================================================

1. Variables
2. Mobile Menu
3. Mega Menu
4. One Page Navigation
5. Toogle Search
6. Current Year Copyright area
7. Background Image
8. wow js init
9. Tooltip
10. Nice Select
11. Default active and hover item active
12. Product Details Page
13. Isotope Gallery Active  ( Gallery / Portfolio )
14. LightCase jQuery Active
15. Slider One Active 
16. Product Slider One
17. Tab Product Slider One
18. Blog Slider One
19. Testimonial Slider - 1
20. Testimonial Slider - 2
21. Testimonial Slider - 3
22. Category Slider
23. Image Slide  - 1 (Screenshot) 
24. Image Slide - 2
25. Image Slide - 3
26. Image Slide - 4 
27. Brand Logo
28. Blog Gallery (Blog Page )
29. Countdown
30. Counter Up
31. Instagram Feed
32. Price Slider
33. Quantity plus minus
34. scrollUp active
35. Parallax active
36. Header menu sticky
37. 注册界面的验证与判断
38. 登录界面的验证与判断
39. index界面产品展示
40. index界面快速查看
41. 产品详情界面的产品展示
42. index 快捷添加购物车
43. header.jsp(<sup>3</sup>) CartMenu.jsp购物车信息刷新显示
44. 购物车移除商品
45. 购物车点击图片进产品详情页
46. 商店界面的快速添加购物车
48. shop-grid.jsp界面快速查看
49. shop-grid.jsp界面 上一页下一页
50. shop-grid.jsp 点击图片和标题进入商品详情
51. 快速查看状态下添加一个或多个到购物车
54. cart.js 购物车商品的加减
55. cart.js 点击图片和名字进入详情页






================================================
翻译
1. 变量：在编程中存储和管理数据值的标识符。
2. 移动菜单：用于移动设备上的响应式菜单，通常是在小屏幕上展开/折叠的导航。
3. 超级菜单：一个大型、多级别的导航菜单，通常包含多个子菜单。
4. 单页导航：用于单页网站的导航，可以平滑滚动到页面的不同部分。
5. 切换搜索：切换显示/隐藏搜索框的功能。
6. 当前年份版权区域：显示当前年份的版权信息。
7. 背景图片：网页或元素的背景图像。
8. wow js初始化：初始化WOW.js库，用于在滚动时触发动画效果。
9. 工具提示：用于在鼠标悬停时显示信息的小弹出窗口。
10. Nice Select：一个用于美化和定制选择框样式的库，可能是指相应的初始化。
11. 默认活动和悬停项活动：设置默认状态下和鼠标悬停时的样式。
12. 产品详情页面：展示单个产品的详细信息页面。
13. Isotope Gallery Active（画廊/作品集）：初始化Isotope库来创建画廊或作品集的网格布局。
14. LightCase jQuery Active：初始化LightCase jQuery插件，用于创建漂亮的弹出式窗口和相册效果。
15. 幻灯片一激活：激活第一个幻灯片。
16. 产品幻灯片一：第一个产品幻灯片。
17. 标签产品幻灯片一：标签页式的产品幻灯片一。
18. 博客幻灯片一：展示博客文章的幻灯片一。
19. 测评幻灯片 - 1：第一个测评幻灯片。
20. 测评幻灯片 - 2：第二个测评幻灯片。
21. 测评幻灯片 - 3：第三个测评幻灯片。
22. 类别幻灯片：用于展示不同类别的幻灯片。
23. 图像幻灯片 - 1（屏幕截图）：第一个图像幻灯片，可能是屏幕截图。
24. 图像幻灯片 - 2：第二个图像幻灯片。
25. 图像幻灯片 - 3：第三个图像幻灯片。
26. 图像幻灯片 - 4：第四个图像幻灯片。
27. 品牌标志：显示品牌的标志或标识。
28. 博客画廊（博客页面）：用于博客页面的画廊展示。
29. 倒计时：显示倒计时计时器，通常用于活动或促销倒计时。
30. 计数器增加：用于数字上的动画计数效果。
31. Instagram Feed：展示Instagram照片流在网站上。
32. 价格滑块：用于设置价格范围的滑块组件。
33. 数量加减：用于增加或减少数量的加减按钮。
34. 激活scrollUp：初始化scrollUp插件，以实现回到顶部按钮。
35. 激活视差效果：初始化视差效果，通过不同滚动速度创造深度感。
36. 头部菜单固定：使头部菜单在滚动时保持固定在页面顶部。

======================================
[ End table content ]
======================================*/

(function ($) {
    "use strict";

    jQuery(document).ready(function () {

        /* --------------------------------------------------------
            1. Variables
        --------------------------------------------------------- */
        var $window = $(window), $body = $('body');

        /* --------------------------------------------------------
            2. Mobile Menu
        --------------------------------------------------------- */
        /* ---------------------------------
           Utilize Function
       ----------------------------------- */
        (function () {
            var $ltn__utilizeToggle = $('.ltn__utilize-toggle'), $ltn__utilize = $('.ltn__utilize'),
                $ltn__utilizeOverlay = $('.ltn__utilize-overlay'), $mobileMenuToggle = $('.mobile-menu-toggle');
            $ltn__utilizeToggle.on('click', function (e) {
                e.preventDefault();
                var $this = $(this), $target = $this.attr('href');
                $body.addClass('ltn__utilize-open');
                $($target).addClass('ltn__utilize-open');
                $ltn__utilizeOverlay.fadeIn();
                if ($this.parent().hasClass('mobile-menu-toggle')) {
                    $this.addClass('close');
                }
            });
            $('.ltn__utilize-close, .ltn__utilize-overlay').on('click', function (e) {
                e.preventDefault();
                $body.removeClass('ltn__utilize-open');
                $ltn__utilize.removeClass('ltn__utilize-open');
                $ltn__utilizeOverlay.fadeOut();
                $mobileMenuToggle.find('a').removeClass('close');
            });
        })();

        /* ------------------------------------
            Utilize Menu
        ----------------------------------- */
        function mobileltn__utilizeMenu() {
            var $ltn__utilizeNav = $('.ltn__utilize-menu, .overlay-menu'),
                $ltn__utilizeNavSubMenu = $ltn__utilizeNav.find('.sub-menu');

            /*Add Toggle Button With Off Canvas Sub Menu*/
            $ltn__utilizeNavSubMenu.parent().prepend('<span class="menu-expand"></span>');

            /*Category Sub Menu Toggle*/
            $ltn__utilizeNav.on('click', 'li a, .menu-expand', function (e) {
                var $this = $(this);
                if ($this.attr('href') === '#' || $this.hasClass('menu-expand')) {
                    e.preventDefault();
                    if ($this.siblings('ul:visible').length) {
                        $this.parent('li').removeClass('active');
                        $this.siblings('ul').slideUp();
                        $this.parent('li').find('li').removeClass('active');
                        $this.parent('li').find('ul:visible').slideUp();
                    } else {
                        $this.parent('li').addClass('active');
                        $this.closest('li').siblings('li').removeClass('active').find('li').removeClass('active');
                        $this.closest('li').siblings('li').find('ul:visible').slideUp();
                        $this.siblings('ul').slideDown();
                    }
                }
            });
        }

        mobileltn__utilizeMenu();

        /* --------------------------------------------------------
            3. Mega Menu
        --------------------------------------------------------- */
        $('.mega-menu').each(function () {
            if ($(this).children('li').length) {
                var ulChildren = $(this).children('li').length;
                $(this).addClass('column-' + ulChildren)
            }
        });


        /* Remove Attribute( href ) from sub-menu title in mega-menu */
        /*
        $('.mega-menu > li > a').removeAttr('href');
        */


        /* Mega Munu  */
        // $(".mega-menu").parent().css({"position": "inherit"});
        $(".mega-menu").parent().addClass("mega-menu-parent");


        /* Add space for Elementor Menu Anchor link */
        $(window).on('elementor/frontend/init', function () {
            elementorFrontend.hooks.addFilter('frontend/handlers/menu_anchor/scroll_top_distance', function (scrollTop) {
                return scrollTop - 75;
            });
        });


        /* ---------------------------------------------------------
            4. One Page Navigation ( jQuery Easing Plugin )
        --------------------------------------------------------- */
        // jQuery for page scrolling feature - requires jQuery Easing plugin
        $(function () {
            $('a.page-scroll').bind('click', function (event) {
                var $anchor = $(this);
                $('html, body').stop().animate({
                    scrollTop: $($anchor.attr('href')).offset().top
                }, 1500, 'easeInOutExpo');
                event.preventDefault();
            });
        });


        /* --------------------------------------------------------
            5. Toogle Search
        -------------------------------------------------------- */
        // Handle click on toggle search button
        $('.header-search-1').on('click', function () {
            $('.header-search-1, .header-search-1-form').toggleClass('search-open');
            return false;
        });


        /* ---------------------------------------------------------
            6. Current Year Copyright area
        --------------------------------------------------------- */
        $(".current-year").text((new Date).getFullYear());


        /* ---------------------------------------------------------
            7. Background Image
        --------------------------------------------------------- */
        var $backgroundImage = $('.bg-image, .bg-image-top');
        $backgroundImage.each(function () {
            var $this = $(this), $bgImage = $this.data('bg');
            $this.css('background-image', 'url(' + $bgImage + ')');
        });


        /* ---------------------------------------------------------
            8. wow js init
        --------------------------------------------------------- */
        new WOW().init();


        /* ---------------------------------------------------------
            9. Tooltip
        --------------------------------------------------------- */
        $('[data-toggle="tooltip"]').tooltip();


        /* --------------------------------------------------------
            10. Nice Select
        --------------------------------------------------------- */
        $('select').niceSelect();


        /* --------------------------------------------------------
            11. Default active and hover item active
        --------------------------------------------------------- */
        var ltn__active_item = $('.ltn__feature-item-6, .ltn__our-journey-wrap ul li, .ltn__pricing-plan-item')
        ltn__active_item.mouseover(function () {
            ltn__active_item.removeClass('active');
            $(this).addClass('active');
        });

        /* --------------------------------------------------------
            12. Product Details Page
        --------------------------------------------------------- */
        $('.ltn__shop-details-large-img').slick({
            slidesToShow: 1, slidesToScroll: 1, arrows: false, fade: true, asNavFor: '.ltn__shop-details-small-img'
        });
        $('.ltn__shop-details-small-img').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            asNavFor: '.ltn__shop-details-large-img',
            dots: false,
            arrows: false,
            vertical: true,
            focusOnSelect: true,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 992, settings: {
                    slidesToShow: 4, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    slidesToShow: 3, slidesToScroll: 1
                }
            }, {
                breakpoint: 580, settings: {
                    slidesToShow: 3, slidesToScroll: 1
                }
            }]
        });

        /* --------------------------------------------------------
            13. Isotope Gallery Active  ( Gallery / Portfolio )
        -------------------------------------------------------- */
        var $ltnGalleryActive = $('.ltn__gallery-active'), $ltnGalleryFilterMenu = $('.ltn__gallery-filter-menu');
        /*Filter*/
        $ltnGalleryFilterMenu.on('click', 'button, a', function () {
            var $this = $(this), $filterValue = $this.attr('data-filter');
            $ltnGalleryFilterMenu.find('button, a').removeClass('active');
            $this.addClass('active');
            $ltnGalleryActive.isotope({filter: $filterValue});
        });
        /*Grid*/
        $ltnGalleryActive.each(function () {
            var $this = $(this), $galleryFilterItem = '.ltn__gallery-item';
            $this.imagesLoaded(function () {
                $this.isotope({
                    itemSelector: $galleryFilterItem, percentPosition: true, masonry: {
                        columnWidth: '.ltn__gallery-sizer',
                    }
                });
            });
        });

        /* --------------------------------------------------------
            14. LightCase jQuery Active
        --------------------------------------------------------- */
        $('a[data-rel^=lightcase]').lightcase({
            transition: 'elastic', /* none, fade, fadeInline, elastic, scrollTop, scrollRight, scrollBottom, scrollLeft, scrollHorizontal and scrollVertical */
            swipe: true, maxWidth: 1170, maxHeight: 600,
        });

        /* --------------------------------------------------------
            15. Slider One Active 
        --------------------------------------------------------- */
        $('.ltn__slide-one-active').slick({
            autoplay: false,
            autoplaySpeed: 2000,
            arrows: true,
            dots: true,
            fade: true,
            cssEase: 'linear',
            infinite: true,
            speed: 300,
            slidesToShow: 1,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 1200, settings: {
                    arrows: false, dots: true,
                }
            }]
        }).on('afterChange', function () {
            new WOW().init();
        });

        /* ltn__slide-two-active */
        $('.ltn__slide-two-active').slick({
            autoplay: false,
            autoplaySpeed: 2000,
            arrows: false,
            dots: true,
            fade: true,
            cssEase: 'linear',
            infinite: true,
            speed: 300,
            slidesToShow: 1,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 1200, settings: {
                    arrows: false, dots: true,
                }
            }]
        }).on('afterChange', function () {
            new WOW().init();
        });


        /* --------------------------------------------------------
            16. Product Slider One
        --------------------------------------------------------- */
        $('.ltn__product-slider-one-active').slick({
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 3,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 992, settings: {
                    slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 580, settings: {
                    slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });


        /* --------------------------------------------------------
            16. Product Slider One
        --------------------------------------------------------- */
        $('.ltn__product-slider-item-four-active').slick({
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 4,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 992, settings: {
                    slidesToShow: 3, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 580, settings: {
                    slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });


        /* --------------------------------------------------------
            16. Product Slider One
        --------------------------------------------------------- */
        $('.ltn__related-product-slider-one-active').slick({
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 4,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 992, settings: {
                    slidesToShow: 3, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 580, settings: {
                    slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });

        /* --------------------------------------------------------
            17. Tab Product Slider One
        --------------------------------------------------------- */
        $('.ltn__tab-product-slider-one-active').slick({
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 4,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 1200, settings: {
                    slidesToShow: 3, slidesToScroll: 1
                }
            }, {
                breakpoint: 992, settings: {
                    arrows: false, dots: true, slidesToShow: 3, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    arrows: false, dots: true, slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 580, settings: {
                    arrows: false, dots: true, slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });

        /* --------------------------------------------------------
            18. Blog Slider One
        --------------------------------------------------------- */
        $('.ltn__blog-slider-one-active').slick({
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 3,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 1200, settings: {
                    slidesToShow: 2, slidesToScroll: 1, arrows: false, dots: true
                }
            }, {
                breakpoint: 992, settings: {
                    slidesToShow: 2, slidesToScroll: 1, arrows: false, dots: true
                }
            }, {
                breakpoint: 768, settings: {
                    slidesToShow: 1, slidesToScroll: 1, arrows: false, dots: true
                }
            }, {
                breakpoint: 580, settings: {
                    arrows: false, dots: true, slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });

        /* --------------------------------------------------------
            19. Testimonial Slider - 1
        --------------------------------------------------------- */
        $('.ltn__testimonial-slider-active').slick({
            arrows: true,
            dots: true,
            infinite: true,
            speed: 300,
            slidesToShow: 1,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 992, settings: {
                    slidesToShow: 1, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    arrows: false, slidesToShow: 1, slidesToScroll: 1
                }
            }, {
                breakpoint: 580, settings: {
                    arrows: false, slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });


        /* --------------------------------------------------------
            20. Testimonial Slider - 2
        --------------------------------------------------------- */
        $('.ltn__testimonial-slider-2-active').slick({
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 3,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 1200, settings: {
                    slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 992, settings: {
                    slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 580, settings: {
                    arrows: false, dots: true, slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });

        /* --------------------------------------------------------
            21. Testimonial Slider - 3
        --------------------------------------------------------- */
        $('.ltn__testimonial-slider-3-active').slick({
            arrows: true,
            centerMode: true,
            centerPadding: '80px',
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 3,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 1600, settings: {
                    slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 1200, settings: {
                    slidesToShow: 1, slidesToScroll: 1
                }
            }, {
                breakpoint: 992, settings: {
                    slidesToShow: 1, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    arrows: false, slidesToShow: 1, slidesToScroll: 1
                }
            }, {
                breakpoint: 580, settings: {
                    centerMode: false, slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });

        /* --------------------------------------------------------
            22. Category Slider
        --------------------------------------------------------- */
        $('.ltn__category-slider-active').slick({
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 6,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 1200, settings: {
                    slidesToShow: 4, slidesToScroll: 1
                }
            }, {
                breakpoint: 992, settings: {
                    slidesToShow: 3, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 580, settings: {
                    slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });


        /* --------------------------------------------------------
            23. Image Slide  - 1 (Screenshot) 
        --------------------------------------------------------- */
        $('.ltn__image-slider-1-active').slick({
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 5,
            slidesToScroll: 1,
            centerMode: true,
            centerPadding: '0px',
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 992, settings: {
                    slidesToShow: 3, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    slidesToShow: 2, slidesToScroll: 1, arrows: false, dots: true
                }
            }, {
                breakpoint: 580, settings: {
                    slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });

        /* --------------------------------------------------------
            24. Image Slide - 2
        --------------------------------------------------------- */
        $('.ltn__image-slider-2-active').slick({
            rtl: false,
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 3,
            slidesToScroll: 1,
            centerMode: true,
            centerPadding: '80px',
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 992, settings: {
                    arrows: false, dots: true, slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    arrows: false, dots: true, slidesToShow: 2, slidesToScroll: 1, centerPadding: '50px'
                }
            }, {
                breakpoint: 580, settings: {
                    arrows: false, dots: true, slidesToShow: 1, slidesToScroll: 1, centerPadding: '50px'
                }
            }]
        });

        /* --------------------------------------------------------
            25. Image Slide - 3
        --------------------------------------------------------- */
        $('.ltn__image-slider-3-active').slick({
            rtl: false,
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 3,
            slidesToScroll: 1,
            centerMode: true,
            centerPadding: '0px',
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 992, settings: {
                    arrows: false, dots: true, slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    arrows: false, dots: true, slidesToShow: 2, slidesToScroll: 1,
                }
            }, {
                breakpoint: 580, settings: {
                    arrows: false, dots: true, slidesToShow: 1, slidesToScroll: 1
                }
            }]
        });


        /* --------------------------------------------------------
            26. Image Slide - 4 
        --------------------------------------------------------- */
        $('.ltn__image-slider-4-active').slick({
            rtl: false,
            arrows: true,
            dots: false,
            infinite: true,
            speed: 300,
            slidesToShow: 4,
            slidesToScroll: 1,
            centerMode: true,
            centerPadding: '0px',
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 1200, settings: {
                    slidesToShow: 3, slidesToScroll: 1
                }
            }, {
                breakpoint: 992, settings: {
                    arrows: false, dots: true, slidesToShow: 2, slidesToScroll: 1
                }
            }, {
                breakpoint: 768, settings: {
                    arrows: false, dots: true, slidesToShow: 2, slidesToScroll: 1,
                }
            }, {
                breakpoint: 580, settings: {
                    arrows: false, dots: true, slidesToShow: 1, slidesToScroll: 1,
                }
            }]
        });


        /* --------------------------------------------------------
            27. Brand Logo
        --------------------------------------------------------- */
        if ($('.ltn__brand-logo-active').length) {
            $('.ltn__brand-logo-active').slick({
                rtl: false,
                arrows: false,
                dots: false,
                infinite: true,
                speed: 300,
                slidesToShow: 6,
                slidesToScroll: 1,
                prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
                nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
                responsive: [{
                    breakpoint: 992, settings: {
                        slidesToShow: 4, slidesToScroll: 1
                    }
                }, {
                    breakpoint: 768, settings: {
                        slidesToShow: 3, slidesToScroll: 1, arrows: false,
                    }
                }, {
                    breakpoint: 580, settings: {
                        slidesToShow: 2, slidesToScroll: 1
                    }
                }]
            });
        }
        ;

        /* --------------------------------------------------------
            28. Blog Gallery (Blog Page )
        --------------------------------------------------------- */
        if ($('.ltn__blog-gallery-active').length) {
            $('.ltn__blog-gallery-active').slick({
                rtl: false,
                arrows: true,
                dots: false,
                infinite: true,
                speed: 300,
                slidesToShow: 1,
                slidesToScroll: 1,
                prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
                nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>'
            });
        }
        ;

        /* --------------------------------------------------------
            29. Countdown
        --------------------------------------------------------- */
        $('[data-countdown]').each(function () {

            var $this = $(this), finalDate = $(this).data('countdown');
            if (!$this.hasClass('countdown-full-format')) {
                $this.countdown(finalDate, function (event) {
                    $this.html(event.strftime('<div class="single"><h1>%D</h1><p>Days</p></div> <div class="single"><h1>%H</h1><p>Hrs</p></div> <div class="single"><h1>%M</h1><p>Mins</p></div> <div class="single"><h1>%S</h1><p>Secs</p></div>'));
                });
            } else {
                $this.countdown(finalDate, function (event) {
                    $this.html(event.strftime('<div class="single"><h1>%Y</h1><p>Years</p></div> <div class="single"><h1>%m</h1><p>Months</p></div> <div class="single"><h1>%W</h1><p>Weeks</p></div> <div class="single"><h1>%d</h1><p>Days</p></div> <div class="single"><h1>%H</h1><p>Hrs</p></div> <div class="single"><h1>%M</h1><p>Mins</p></div> <div class="single"><h1>%S</h1><p>Secs</p></div>'));
                });
            }

        });


        /* --------------------------------------------------------
            30. Counter Up
        --------------------------------------------------------- */
        // $('.ltn__counter').counterUp();

        $('.counter').counterUp({
            delay: 10, time: 2000
        });
        $('.counter').addClass('animated fadeInDownBig');
        $('h3').addClass('animated fadeIn');


        /* --------------------------------------------------------
            31. Instagram Feed
        --------------------------------------------------------- */
        if ($('.ltn__instafeed').length) {
            $.instagramFeed({
                'username': 'envato',
                'container': ".ltn__instafeed",
                'display_profile': false,
                'display_biography': false,
                'display_gallery': true,
                'styling': false,
                'items': 12,
                "image_size": "600", /* 320 */
            });
            $('.ltn__instafeed').on("DOMNodeInserted", function (e) {
                if (e.target.className == 'instagram_gallery') {
                    $('.ltn__instafeed-slider-2 .' + e.target.className).slick({
                        infinite: true,
                        slidesToShow: 3,
                        slidesToScroll: 1,
                        prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
                        nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
                        responsive: [{
                            breakpoint: 767, settings: {
                                slidesToShow: 2
                            }
                        }, {
                            breakpoint: 575, settings: {
                                slidesToShow: 1
                            }
                        }]
                    })
                    $('.ltn__instafeed-slider-1 .' + e.target.className).slick({
                        infinite: true,
                        slidesToShow: 5,
                        slidesToScroll: 1,
                        prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
                        nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
                        responsive: [{
                            breakpoint: 119, settings: {
                                slidesToShow: 4
                            }
                        }, {
                            breakpoint: 991, settings: {
                                slidesToShow: 3
                            }
                        }, {
                            breakpoint: 767, settings: {
                                slidesToShow: 2
                            }
                        }, {
                            breakpoint: 575, settings: {
                                slidesToShow: 1
                            }
                        }]
                    });
                }
            });
        }
        ;


        /* ---------------------------------------------------------
            32. Price Slider
        --------------------------------------------------------- */
        $(".slider-range").slider({
            range: true, min: 50, max: 5000, values: [50, 1500], slide: function (event, ui) {
                $(".amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
            }
        });
        $(".amount").val("$" + $(".slider-range").slider("values", 0) + " - $" + $(".slider-range").slider("values", 1));


        /* --------------------------------------------------------
            33. Quantity plus minus
        -------------------------------------------------------- */
        $(".cart-plus-minus").prepend('<div class="dec qtybutton">-</div>');
        $(".cart-plus-minus").append('<div class="inc qtybutton">+</div>');
        $(".qtybutton").on("click", function () {
            var $button = $(this);

            //myCode
            let cartID = $button.parents("tr").find(".data-cartId").val();
            console.log(cartID);


            var oldValue = $button.parent().find("input").val();
            if ($button.text() == "+") {
                // var newVal = parseFloat(oldValue) + 1;
                //myCode
                updateCartItemNum(cartID, 1);
            } else {
                if (oldValue > 1) {
                    // var newVal = parseFloat(oldValue) - 1;
                    //myCode
                    updateCartItemNum(cartID, -1);
                } else {
                    // newVal = 1;
                    $button.parent().find("input").val(1);
                }
            }
            // $button.parent().find("input").val(newVal);
        });


        /* --------------------------------------------------------
            34. scrollUp active
        -------------------------------------------------------- */
        $.scrollUp({
            scrollText: '<i class="fa fa-angle-up"></i>', easingType: 'linear', scrollSpeed: 900, animation: 'fade'
        });


        /* --------------------------------------------------------
            35. Parallax active ( About Section  )
        -------------------------------------------------------- */
        /* 
        > 1 page e 2 ta call korle 1 ta kaj kore 
        */
        if ($('.ltn__parallax-effect-active').length) {
            var scene = $('.ltn__parallax-effect-active').get(0);
            var parallaxInstance = new Parallax(scene);
        }


        /* --------------------------------------------------------
            36. Testimonial Slider 4
        -------------------------------------------------------- */
        var ltn__testimonial_quote_slider = $('.ltn__testimonial-slider-4-active');
        ltn__testimonial_quote_slider.slick({
            autoplay: true,
            autoplaySpeed: 3000,
            dots: false,
            arrows: true,
            fade: true,
            speed: 1500,
            slidesToShow: 1,
            slidesToScroll: 1,
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 992, settings: {
                    autoplay: false, slidesToShow: 1, slidesToScroll: 1, dots: true, arrows: false,
                }
            }, {
                breakpoint: 768, settings: {
                    autoplay: false, slidesToShow: 1, slidesToScroll: 1, dots: true, arrows: false,
                }
            }, {
                breakpoint: 580, settings: {
                    autoplay: false, slidesToShow: 1, slidesToScroll: 1, dots: true, arrows: false,
                }
            }]
        });

        /* have to write code for bind it with static images */
        ltn__testimonial_quote_slider.on('beforeChange', function (event, slick, currentSlide, nextSlide) {
            var liIndex = nextSlide + 1;
            var slideImageliIndex = (slick.slideCount == liIndex) ? liIndex - 1 : liIndex;
            var cart = $('.ltn__testimonial-slider-4 .slick-slide[data-slick-index="' + slideImageliIndex + '"]').find('.ltn__testimonial-image');
            var imgtodrag = $('.ltn__testimonial-quote-menu li:nth-child(' + liIndex + ')').find("img").eq(0);
            if (imgtodrag) {
                AnimateTestimonialImage(imgtodrag, cart)
            }
        });

        /* have to write code for bind static image to slider accordion to slide index of images */
        $(document).on('click', '.ltn__testimonial-quote-menu li', function (e) {
            var el = $(this);
            var elIndex = el.prevAll().length;
            ltn__testimonial_quote_slider.slick('slickGoTo', elIndex);
            var cart = $('.ltn__testimonial-slider-4 .slick-slide[data-slick-index="' + elIndex + '"]').find('.ltn__testimonial-image');
            var imgtodrag = el.find("img").eq(0);
            if (imgtodrag) {
                AnimateTestimonialImage(imgtodrag, cart)
            }

        });


        function AnimateTestimonialImage(imgtodrag, cart) {
            var imgclone = imgtodrag.clone().offset({
                top: imgtodrag.offset().top, left: imgtodrag.offset().left
            }).css({
                'opacity': '0.5', 'position': 'absolute', 'height': '130px', 'width': '130px', 'z-index': '100'
            }).addClass('quote-animated-image').appendTo($('body')).animate({
                'top': cart.offset().top + 10, 'left': cart.offset().left + 10, 'width': 130, 'height': 130
            }, 300);


            imgclone.animate({
                'visibility': 'hidden', 'opacity': '0'
            }, function () {
                $(this).remove()
            });
        }


        /*------------------------------------    
        Slick Carousel
        --------------------------------------*/

        $('.ltn__testimonial-7-image-slider').slick({
            slidesToShow: 2,
            asNavFor: '.ltn__testimonial-7-text-slider',
            dots: false,
            arrows: false,
            focusOnSelect: true,
        });

        $('.ltn__testimonial-7-text-slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: true,
            dots: false,
            draggable: false,
            fade: true,
            asNavFor: '.ltn__testimonial-7-image-slider',
            prevArrow: '<a class="slick-prev"><i class="icon-arrow-left" alt="Arrow Icon"></i></a>',
            nextArrow: '<a class="slick-next"><i class="icon-arrow-right" alt="Arrow Icon"></i></a>',
            responsive: [{
                breakpoint: 600, settings: {
                    dots: true, slidesToShow: 1, slidesToScroll: 1, centerPadding: '0px',
                }
            }, {
                breakpoint: 320, settings: {
                    autoplay: false,
                    dots: true,
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    centerMode: false,
                    focusOnSelect: false,
                }
            }]
        });


    });


    /* --------------------------------------------------------
        36. Header menu sticky
    -------------------------------------------------------- */
    $(window).on('scroll', function () {
        var scroll = $(window).scrollTop();
        if (scroll < 445) {
            $(".ltn__header-sticky").removeClass("sticky-active");
        } else {
            $(".ltn__header-sticky").addClass("sticky-active");
        }
    });


    $(window).on('load', function () {
        /*-----------------
            preloader
        ------------------*/
        if ($('#preloader').length) {
            var preLoder = $("#preloader");
            preLoder.fadeOut(1000);

        }


    });


})(jQuery);


/* --------------------------------------------------------
    37. 注册界面的验证与判断
-------------------------------------------------------- */
$(function () {
    //name输入框
    let $inputName = $("#input_name");
    //Email输入框
    let $inputEmail = $("#input_email");
    //password以及验证框
    let $inputPassword = $("#input_password");
    let $inputConfirmPassword = $("#input_confirm_password");
    //复选框
    let $inputCheckbox = $("#input_checkbox");
    //提交按钮
    let $inputButton = $("#input_button");

    //Error<span>标签
    let $emailError = $("#emailError");
    let $passwordError = $("#passwordError");
    let $confirmPasswordError = $("#confirmPasswordError");
    let $nameError = $("#nameError");

    //通行证
    let namePass = true;
    let emilPass = false;
    let PasswordPass = false;
    let confirmPasswordPass = false;
    let checkboxPass = false;

    $inputEmail.focusout(function () {
        //格式判断
        let emailStr = $inputEmail.val();
        const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailRegex.test(emailStr)) {
            $emailError.html("请输入有效的电子邮件地址");
            emilPass = false;
        } else {
            $emailError.html("");
            //判断是否重复
            $.post("UserServlet", "method=existsUser&email=" + emailStr, function (msg) {
                if (JSON.stringify(msg) === "false") {
                    $emailError.html("该邮箱地址已被占用或不可注册");
                    emilPass = false;
                } else {
                    emilPass = true;
                }
            });
        }
        pass()
    });

    //验证密码格式且是否相同
    $inputPassword.focusout(function () {
        //验证格式
        let passwordStr = $inputPassword.val();
        const passwordRegex = /^\d{4,}$/;
        if (!passwordRegex.test(passwordStr)) {
            $passwordError.html("密码至少包含四位数字");
            PasswordPass = false;
        } else {
            $passwordError.html("")
            PasswordPass = true;
        }
        pass()
    });

    $inputConfirmPassword.focusout(function () {
        if (PasswordPass && $inputPassword.val() === $inputConfirmPassword.val()) {
            $confirmPasswordError.html("");
            confirmPasswordPass = true;
        } else {
            $confirmPasswordError.html("两次密码不一致");
            confirmPasswordPass = false;
        }
        pass()
    })

    //判断复选框是否勾选
    $inputCheckbox.change(function () {
        checkboxPass = $inputCheckbox[0].checked;
        pass()
    });


    //对提交按钮进行处理
    function pass() {
        if (namePass && emilPass && PasswordPass && confirmPasswordPass && checkboxPass) {
            $inputButton.prop("style", "");
            $inputButton.prop("type", "submit")
        } else {
            $inputButton.prop("style", "background-color: #aaaaaa");
            $inputButton.prop("type", "button")
        }
    }

    //对名字进行验证(不能为空格，可以不填)
    $inputName.focusout(function () {
        const nameRegex = /\s/;
        if (nameRegex.test($inputName.val())) {
            $nameError.html("名字不合法！");
            namePass = false;
        } else {
            $nameError.html("");
            namePass = true;
        }
    });

    //解决邮箱验证迟钝的bug
    $("body").click(pass);
});

/* --------------------------------------------------------
    38. 登录界面的验证与判断
-------------------------------------------------------- */
$(function () {
    let $loginInputEmail = $("#login_input_email");
    let $loginInputPassword = $("#login_input_password");
    let $loginError = $("#login_Error");
    let $loginButton = $("#login_button");


    //邮箱的判断
    $loginInputEmail.focusout(function () {
        //格式判断
        let emailStr = $loginInputEmail.val();
        const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailRegex.test(emailStr)) {
            $loginError.html("请输入有效的电子邮件地址");
        } else {
            $loginError.html("");
            //判断是否有该账户
            $.post("UserServlet", "method=existsUser&email=" + emailStr, function (msg) {
                if (JSON.stringify(msg) === "true") {
                    $loginError.html("该账户未注册");
                }
            });
        }
    });

    //密码的判断
    $loginButton.click(function () {
        $.post("UserServlet", "method=loginUser&email=" + $loginInputEmail.val() + "&password=" + $loginInputPassword.val(), function (msg) {
            console.log(JSON.stringify(msg))
            if (JSON.stringify(msg) === "false") {
                $loginError.html("密码错误！")
            } else {
                window.location.href = "index.jsp";
            }
        })
    });
});

/* --------------------------------------------------------
    39. index界面产品展示
-------------------------------------------------------- */
$(function () {
    let $indexProduct = $("#index_product").find("div:first");

    $.post("FlowerServlet", "method=findFlowers&pageNo=1&pageSize=8", function (msg) {
        // 随机排序花卉列表
        let shuffledItems = shuffleArray(msg.items);

        for (let i in shuffledItems) {
            let $productClone = $indexProduct.clone(true);

            $productClone.find(".flower_id").val(shuffledItems[i].flowerId);
            $productClone.find(".product-img img").attr("src", shuffledItems[i].flowerImgPath);
            $productClone.find(".product-title a").html(shuffledItems[i].flowerName);
            $productClone.find(".product-price span").html("$" + shuffledItems[i].sellingPrice.toFixed(2));
            $productClone.find(".product-price del").html("$" + shuffledItems[i].listPrice.toFixed(2));

            if (shuffledItems[i].listPrice === shuffledItems[i].sellingPrice) {
                $productClone.find(".product-price del").remove();
                $productClone.find(".product-badge ul").html("<li class=\"badge-1\">Hot</li>");

            } else {
                $productClone.find(".product-badge li").html(// 打折率
                    (shuffledItems[i].sellingPrice / shuffledItems[i].listPrice * 10).toFixed(1) + "%");
            }

            $("#index_product").append($productClone);
        }
    });

    //最后删除原始Flower
    $indexProduct.remove();

    // 随机排序数组的函数(洗牌算法 Fisher-Yates)
    function shuffleArray(array) {
        let shuffledArray = array.slice();
        for (let i = shuffledArray.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * (i + 1));
            [shuffledArray[i], shuffledArray[j]] = [shuffledArray[j], shuffledArray[i]];
        }
        return shuffledArray;
    }


});

/* --------------------------------------------------------
    40. index界面快速查看
-------------------------------------------------------- */
function quickView(a) {
    let flowerId = $(a).parents(".ltn__product-item.text-center").find(".flower_id").val();
    quickViewData(flowerId);
}

function quickViewData(flowerId) {
    $.post("FlowerServlet", "method=findFlowerDetailById&flowerId=" + flowerId, function (msg) {
        let $quickViewDiv = $("#quick_view");
        $quickViewDiv.find(".quick_view_flowerId").val(msg.flowerId);
        $quickViewDiv.find(".cart-plus-minus-box").val(1);//初始化
        $quickViewDiv.find(".modal-product-img img").attr("src", msg.flowerImgPath);
        $quickViewDiv.find("h3").html(msg.flowerName);

        $quickViewDiv.find(".product-price span").html("$" + msg.sellingPrice.toFixed(2));
        $quickViewDiv.find(".product-price del").html("$" + msg.listPrice.toFixed(2));
        if (msg.sellingPrice === msg.listPrice) {
            $quickViewDiv.find(".product-price del").remove();
        }
        $quickViewDiv.find(".modal-product-brief p").html(msg.describe);
    });
}

/* --------------------------------------------------------
    41. 产品详情界面的产品展示
-------------------------------------------------------- */
function productDetailView(a) {
    let flowerId = $(a).parents(".ltn__product-item.text-center").find(".flower_id").val();
    window.location.href = "product-details.jsp?flowerId=" + flowerId;
}

$(function () {
    const currentUrl = window.location.pathname; // 获取当前页面的路径部分
    if (currentUrl.includes("product-details.jsp")) {
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);
        const flowerId = urlParams.get("flowerId");

        // 发起 POST 请求
        $.post("FlowerServlet", "method=findFlowerDetailById&flowerId=" + flowerId, function (msg) {
            $(".pb-70 .single-large-img a").prop("href", msg.flowerImgPath);
            $(".pb-70 .single-large-img img").prop("src", msg.flowerImgPath);
            $(".pb-70 .col-md-6 h3").text(msg.flowerName);
            $(".pb-70 .product-price span").text("$" + msg.sellingPrice.toFixed(2));
            $(".pb-70 .product-price del").text("$" + msg.listPrice.toFixed(2));
            if (msg.sellingPrice === msg.listPrice) {
                $(".pb-70 .product-price del").remove();
            }
            $(".pb-70 .modal-product-brief p").text(msg.describe);
            $("#flower_id").text(msg.flowerId);
            $("#flower_categories").text(msg.categories);
            $("#flower_tags").text(msg.tags);
            $(".ltn__shop-details-tab-content-inner").html(msg.describeDetail)

        });

        //相关产品
        /*$.post(
            "FlowerServlet",
            "method=findFlowersCategoriesById&flowerId=" + flowerId,
            function (msg) {
                let $productDetailsCategories = $("#product_details_categories div:first");
                for (let i = 0; i < msg.length; i++) {
                    let clone = $productDetailsCategories.clone(true);
                    clone.find(".product-img img").prop("src", msg[i].flowerImgPath);
                    clone.find(".product-info h2").text(msg[i].flowerName);
                    clone.find(".product-price span").text("$" + msg[i].sellingPrice.toFixed(2));
                    clone.find(".product-price del").text("$" + msg[i].listPrice.toFixed(2));
                    if (msg[i].sellingPrice === msg[i].listPrice) {
                        clone.find(".product-price del").remove();
                        clone.find(".product-badge ul").html(
                            "<li class=\"badge-1\">Hot</li>"
                            );
                    }else {
                        clone.find(".product-badge li").html(
                            // 打折率
                            (msg[i].sellingPrice / msg[i].listPrice * 10).toFixed(1) + "%"
                        );
                    }

                    $("#product_details_categories").append(clone);
                }
                $productDetailsCategories.remove();
            }
        );*/
    }
});

/* --------------------------------------------------------
    42. index 快捷添加购物车
-------------------------------------------------------- */
function quickAddCart(a) {
    //判断是否登录
    let username = $("#header_username");
    if (username[0]) {
        let flowerId = $(a).parents(".ltn__product-item.text-center").find(".flower_id").val();
        $.post("FlowerServlet", "method=addFlowerToCart&flowerId=" + flowerId, function (msg) {
            //改变弹出层信息
            let parents = $(a).parents(".col-lg-3.col-md-4.col-sm-6.col-12");
            let imgPath = parents.find(".product-img img").attr("src");
            let flowerName = parents.find(".product-info h2").text();

            let $addToCartModal = $("#add_to_cart_modal");
            $addToCartModal.find(".modal-product-info h5").text(flowerName);
            $addToCartModal.find(".modal-product-img img").prop("src", imgPath);
            //刷新购物车
            refreshCartInfo();
        });
    } else {
        window.location.href = "login.jsp";
    }
}

/* --------------------------------------------------------
    43. header.jsp(<sup>3</sup>) CartMenu.jsp购物车信息刷新显示
-------------------------------------------------------- */

//刷新购物车的方法
function refreshCartInfo() {
    $.post(
        "CartServlet",
        "method=findCartInfo",
        function (msg) {
            $(".ltn__utilize-toggle").find("sup").html(msg.length);
            //直接clone网页元素的话 当购物车没商品就有bug
            let $cartItem = $(
                "<div class=\"mini-cart-item clearfix\">\n" +
                "            <input class=\"cart_id\" type=\"hidden\" value=\"0\">\n" +
                "            <input class=\"cart_flowerId\" type=\"hidden\" value=\"0\">\n" +
                "            <input class=\"cart_userId\" type=\"hidden\" value=\"0\">\n" +
                "            <div class=\"mini-cart-img\">\n" +
                "                <a onclick=\"productDetailView_cart(this)\" href=\"javascript:void(0)\"><img src=\"img/product/4.png\" alt=\"图片\"></a>\n" +
                "                <span onclick=\"removeCartItem(this)\" class=\"mini-cart-item-delete\"><i class=\"icon-trash\"></i></span>\n" +
                "            </div>\n" +
                "            <div class=\"mini-cart-info\">\n" +
                "                <h6><a href=\"#\">粉色花树</a></h6>\n" +
                "                <span class=\"mini-cart-quantity\">1 x $68.00</span>\n" +
                "            </div>\n" +
                "        </div>"
            );

            let $cartItems = $(".mini-cart-product-area.ltn__scrollbar");
            //清空购物车元素
            $cartItems.html("");

            //总价
            let totalPrice = 0;

            for (let i = msg.length - 1; i >= 0; i--) {
                let clone = $cartItem.clone(true);
                let flowerImgPath = msg[i].flowerImgPath;
                let flowerName = msg[i].flowerName;
                let flowerNumber = msg[i].flowerNumber;
                let flowerPrice = msg[i].flowerPrice;
                let cartId = msg[i].cartId;
                let flowerId = msg[i].flowerId;
                let userId = msg[i].userId;

                totalPrice += flowerNumber * flowerPrice;

                clone.find(".mini-cart-img img").prop("src", flowerImgPath);
                clone.find(".mini-cart-info h6").text(flowerName);
                clone.find(".mini-cart-quantity").text(flowerNumber + " x " + "$" + flowerPrice.toFixed(2));
                clone.find(".cart_id").val(cartId);
                clone.find(".cart_flowerId").val(flowerId);
                clone.find(".cart_userId").val(userId);

                $cartItems.append(clone);
            }

            $(".mini-cart-sub-total span").text("$" + totalPrice.toFixed(2));
            $(".ltn__secondary-color").text("$" + totalPrice.toFixed(2));
        }
    );

}

//调用方法
$(function () {
    refreshCartInfo();
});


/* --------------------------------------------------------
    44. 购物车移除商品
-------------------------------------------------------- */
function removeCartItem(a) {
    let cartItem = $(a).parents(".mini-cart-item.clearfix");
    let cartId = cartItem.find(".cart_id").val();
    $.post(
        "CartServlet",
        "method=removeCartItem&cartId=" + cartId,
        function () {
            refreshCartInfo();
        }
    );
}

/* --------------------------------------------------------
    45. 购物车点击图片进产品详情页
-------------------------------------------------------- */
function productDetailView_cart(a) {
    let flowerId = $(a).parents(".mini-cart-item.clearfix").find(".cart_flowerId").val();
    window.location.href = "product-details.jsp?flowerId=" + flowerId;
}

/* --------------------------------------------------------
    46. 商店界面的产品展示
-------------------------------------------------------- */

$(function () {
    const currentUrl = window.location.pathname; // 获取商家界面的跟目录
    if (currentUrl.includes("shop-grid.jsp")) {
        showFlowers(1, 8);
    }
});

//商家界面的函数
function showFlowers(pageNo, pageSize) {
    $.post(
        "FlowerServlet",
        `method=findFlowers&pageNo=${pageNo}&pageSize=${pageSize}`,
        function (msg) {
            const items = msg.items;
            let $FlowerItemOriginal = $(".col-xl-3.col-lg-4.col-sm-6.col-12:first");
            $(".col-xl-3.col-lg-4.col-sm-6.col-12:not(:first)").remove();
            for (let i = 0; i < items.length; i++) {
                const item = items[i];
                const flowerId = item.flowerId;
                const flowerImgPath = item.flowerImgPath;
                const flowerName = item.flowerName;
                const sellingPrice = item.sellingPrice;
                const listPrice = item.listPrice;

                let $FlowerItemClone = $FlowerItemOriginal.clone(true);
                $FlowerItemClone.find(".product-img img").prop("src", flowerImgPath);
                $FlowerItemClone.find(".product-info h2 a").text(flowerName);
                $FlowerItemClone.find(".product-price span").text("$" + sellingPrice.toFixed(2));
                $FlowerItemClone.find(".product-price del").text("$" + listPrice.toFixed(2));
                $FlowerItemClone.find(".shop_flowerId").val(flowerId);

                if (sellingPrice === listPrice) {
                    $FlowerItemClone.find(".product-price del").remove();
                } else {
                    //打折率
                    let str = (sellingPrice / listPrice * 10).toFixed(1) + "%";
                    $FlowerItemClone.find(".product-badge ul").html('<li class="badge-2">' + str + '</li>');
                }

                $(".col-xl-3.col-lg-4.col-sm-6.col-12:last").after($FlowerItemClone);
            }
            $FlowerItemOriginal.remove();
            //生成页码的函数
            generatePagination(pageNo, msg.pageTotal);
        }
    );
}

/* --------------------------------------------------------
    46. 商店界面的快速添加购物车
-------------------------------------------------------- */
function quickAddCartShop(a) {
    //判断是否登录
    let username = $("#header_username");
    if (username[0]) {
        let flowerId = $(a).parents(".col-xl-3.col-lg-4.col-sm-6.col-12").find(".shop_flowerId").val();
        $.post("FlowerServlet", "method=addFlowerToCart&flowerId=" + flowerId, function (msg) {
            //改变弹出层信息
            let parents = $(a).parents(".col-xl-3.col-lg-4.col-sm-6.col-12");
            let imgPath = parents.find(".product-img img").attr("src");
            let flowerName = parents.find(".product-info h2").text();

            let $addToCartModal = $("#add_to_cart_modal");
            $addToCartModal.find(".modal-product-info h5").text(flowerName);
            $addToCartModal.find(".modal-product-img img").prop("src", imgPath);
            //刷新购物车
            refreshCartInfo();
        });
    } else {
        window.location.href = "login.jsp";
    }
}

/* --------------------------------------------------------
    48. shop-grid.jsp界面快速查看
-------------------------------------------------------- */
function quickViewShop(a) {
    let flowerId = $(a).parents(".col-xl-3.col-lg-4.col-sm-6.col-12").find(".shop_flowerId").val();
    quickViewData(flowerId);
}

/* --------------------------------------------------------
    49. shop-grid.jsp界面 上一页下一页
-------------------------------------------------------- */

//生成页码的函数
function generatePagination(pageNo, totalPage) {
    let $pagination = $("#pagination");
    $pagination.html("");


    $pagination.append('<li><a onclick="changePage(-1,' + pageNo + ',' + totalPage + ')" href="javascript:void(0)"><i class="icon-arrow-left"></i></a></li>');

    for (let i = 1; i <= totalPage; i++) {
        if (i === pageNo) {
            $pagination.append(`<li class="active"><a onclick="showFlowers(${i},8)" href="javascript:void(0)">${i}</a></li>`);
        } else {
            $pagination.append(`<li><a onclick="showFlowers(${i},8)" href="javascript:void(0)">${i}</a></li>`);
        }
    }

    $pagination.append('<li><a onclick="changePage(1,' + pageNo + ',' + totalPage + ')" href="javascript:void(0)"><i class="icon-arrow-right"></i></a></li>');
}

//上一页和下一页
function changePage(direction, pageNo, totalPage) {
    if (direction === -1) {
        if (pageNo > 1) {
            pageNo--;
        }
    } else if (direction === 1) {
        if (pageNo < totalPage) {
            pageNo++;
        }
    }
    showFlowers(pageNo, 8);
    generatePagination(pageNo, totalPage);
}

/* --------------------------------------------------------
    50. shop-grid.jsp 点击图片和标题进入商品详情
-------------------------------------------------------- */
function productDetailView_shop(a) {
    let flowerId = $(a).parents(".col-xl-3.col-lg-4.col-sm-6.col-12").find(".shop_flowerId").val();
    window.location.href = "product-details.jsp?flowerId=" + flowerId;
}

/* --------------------------------------------------------
    51. 快速查看状态下添加一个或多个到购物车
-------------------------------------------------------- */
function quickAddCartAndNum(a) {
    let username = $("#header_username");
    if (username[0]) {
        let parents = $(a).parents(".modal-product-item");
        let num = parents.find(".cart-plus-minus-box").val();
        let flowerId = parents.find(".quick_view_flowerId").val();
        let flowerName = parents.find(".modal-product-info.shop-details-info.pl-0 h3").val();
        let flowerImgPath = parents.find(".modal-product-img img").attr("src");

        $.post(
            "FlowerServlet",
            "method=addFlowerToCart&flowerId=" + flowerId + "&num=" + num,
            function (msg) {

                //改变弹出层信息
                let $addToCartModal = $("#add_to_cart_modal");
                $addToCartModal.find(".modal-product-info h5").text(flowerName);
                $addToCartModal.find(".modal-product-img img").prop("src", flowerImgPath);
                //刷新购物车
                refreshCartInfo();
            }
        );

    } else {
        window.location.href = "login.jsp";
    }
}

/* --------------------------------------------------------
    52. 商品详情页状态下添加一个或多个到购物车
-------------------------------------------------------- */
function productDetailAddCartAndNum(a) {
    let username = $("#header_username");
    if (username[0]) {

        let parents = $(a).parents(".ltn__shop-details-inner");
        let flowerName = parents.find(".modal-product-info.shop-details-info.pl-0 h3").text();
        let flowerImgPath = parents.find(".single-large-img img").attr("src");
        let flowerId = parents.find("#flower_id").html();
        let num = parents.find(".cart-plus-minus-box").val();

        $.post(
            "FlowerServlet",
            "method=addFlowerToCart&flowerId=" + flowerId + "&num=" + num,
            function (msg) {

                //  改变弹出层信息
                let $addToCartModal = $("#add_to_cart_modal");
                $addToCartModal.find(".modal-product-info h5").text(flowerName);
                $addToCartModal.find(".modal-product-img img").prop("src", flowerImgPath);
                //刷新购物车
                refreshCartInfo();
            }
        );

    } else {
        window.location.href = "login.jsp";
    }
}

/* --------------------------------------------------------
    53. cart.js 购物车界面的 购物车信息刷新
-------------------------------------------------------- */
function cartJsp_RefreshCartInfo() {
    let username = $("#header_username");
    if (username[0]) {

        $.post("CartServlet",
            "method=findCartInfo",
            function (msg) {
                let $shoppingCartTable = $(".shoping-cart-table.table-responsive tbody");
                $shoppingCartTable.find("tr:not(:first)").remove();
                let $initialTr = $shoppingCartTable.find("tr:first");

                //总价
                let totalPrice = 0;
                let carriage = 15;
                let sumPrice = 0;

                //遍历cartItem
                for (let i = 0; i < msg.length; i++) {
                    let cartId = msg[i].cartId;
                    let flowerId = msg[i].flowerId;
                    let flowerName = msg[i].flowerName;
                    let flowerNumber = msg[i].flowerNumber;
                    let flowerPrice = msg[i].flowerPrice;
                    let flowerImgPath = msg[i].flowerImgPath;

                    totalPrice = totalPrice + flowerPrice * flowerNumber;

                    let $cloneTr = $initialTr.clone(true);

                    $cloneTr.find(".data-cartId").val(cartId);
                    $cloneTr.find(".data-flowerId").val(flowerId);

                    $cloneTr.find(".cart-product-info a").text(flowerName);
                    $cloneTr.find(".cart-product-image img").prop("src", flowerImgPath);
                    $cloneTr.find(".cart-product-quantity input").val(flowerNumber);
                    $cloneTr.find(".cart-product-price").text("$" + flowerPrice.toFixed(2));
                    $cloneTr.find(".cart-product-subtotal").text("$" + (flowerPrice * flowerNumber).toFixed(2));


                    $shoppingCartTable.append($cloneTr);
                }
                $initialTr.remove();

                if (totalPrice >= 49) {
                    carriage = 0;
                }
                sumPrice = totalPrice + carriage;

                let $shoppingCartTotal = $(".shoping-cart-total.mt-50");
                $shoppingCartTotal.find(".cart-total").text("$" + totalPrice.toFixed(2));
                $shoppingCartTotal.find(".carriage-price").text("$" + carriage.toFixed(2));
                $shoppingCartTotal.find(".cart-total-price").text("$" + sumPrice.toFixed(2));

            }
        );
    } else {
        window.location.href = "login.jsp";
    }
}

//在cart.jsp页面调用
$(function () {
        let href = window.location.pathname;
        if (href.includes("cart.jsp")) {
            cartJsp_RefreshCartInfo();
        }
    }
);

/* --------------------------------------------------------
    54. cart.js 购物车商品的加减
-------------------------------------------------------- */
function updateCartItemNum(cartId, delta) {
    $.post("CartServlet",
        "method=updateCartItemNum&cartId=" + cartId + "&delta=" + delta,
        function () {
            cartJsp_RefreshCartInfo();
        }
    );
}

/* --------------------------------------------------------
    55. cart.js 点击图片和名字进入详情页
-------------------------------------------------------- */
function cartJsp_productDetailView(a) {
    let flowerId = $(a).parents("tr").find(".data-flowerId").val();
    window.location.href = "product-details.jsp?flowerId=" + flowerId;
}

/* --------------------------------------------------------
    56. 结账 购物车信息的打印
-------------------------------------------------------- */
$(function () {
    const currentUrl = window.location.pathname;
    if (currentUrl.includes("checkout.jsp")) {

        let username = $("#header_username");
        if (!username[0]) {
            window.location.href = "login.jsp";
        }

        let $cartTotal = $(".shoping-cart-total.mt-50");
        let $tbodyObj = $cartTotal.find("tbody");
        $.post(
            "CartServlet",
            "method=findCartInfo",
            function (msg) {
                let sumPrice = 0;

                for (let i = 0; i < msg.length; i++) {
                    let cartItem = msg[i];
                    console.log(cartItem);
                    $tbodyObj.append(
                        '<tr>\n' +
                        '    <td>' + cartItem.flowerName + ' <strong>× ' + cartItem.flowerNumber + '</strong></td>\n' +
                        '    <td>$' + (cartItem.flowerPrice * cartItem.flowerNumber).toFixed(2) + '</td>\n' +
                        '</tr>'
                    );
                    sumPrice += cartItem.flowerPrice * cartItem.flowerNumber;
                }

                if (sumPrice > 49) {
                    $tbodyObj.append(
                        '<tr>\n' +
                        '    <td>运输和手续费</td>\n' +
                        '    <td>$0.00</td>\n' +
                        '</tr>'
                    );
                } else {
                    $tbodyObj.append(
                        '<tr>\n' +
                        '    <td>运输和手续费</td>\n' +
                        '    <td>$15.00</td>\n' +
                        '</tr>'
                    );
                    sumPrice += 15;
                }

                $tbodyObj.append(
                    '<tr>\n' +
                    '    <td><strong>订单总额</strong></td>\n' +
                    '    <td><strong>$' + sumPrice.toFixed(2) + '</strong></td>\n' +
                    '</tr>'
                );
            }
        );
    }
});





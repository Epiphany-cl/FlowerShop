<%@ page contentType="text/html;charset=UTF-8" %>
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
                        <h1 class="ltn__page-title">订单详情</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="index.jsp">主页</a></li>
                                <li>我的订单</li>
                                <li>订单详情</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- WISHLIST AREA START -->
    <div class="liton__wishlist-area pb-50">
        <div class="container">

            <h1>订单号:<span class="orderDetail_orderId"></span></h1>
            <table class="table">
                <thead>
                <tr>
                    <th>商品id</th>
                    <th>商品名称</th>
                    <th>数量</th>
                    <th>单价</th>
                    <th></th>
                </tr>
                </thead>
                <tbody class="orders-table">
                <tr>
                    <td>1</td>
                    <td>玫瑰</td>
                    <td>11</td>
                    <td>$ 99.00</td>
                    <td>
                        <a href="javascript:void(0)"
                           onclick="setCommentModal(this)"
                           data-toggle="modal"
                           data-target="#comment_orderDetail"
                        >
                            立即评论
                        </a>
                    </td>
                </tr>
                </tbody>
            </table>
            <h4>总价：<span class="orderDetail_priceTotal" style="color: #cd0a0a">$0.00</span></h4>

        </div>
    </div>
    <!-- WISHLIST AREA START -->

    <%-- 商品评论的弹窗 --%>
    <div class="ltn__modal-area">
        <div class="modal fade" id="comment_orderDetail" tabindex="-1">
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
                                        <input type="hidden" value="0" class="orderDetail_flowerId">
                                        <h1></h1>
                                        <div class="input-item input-item-textarea ltn__custom-icon">
                                            <textarea placeholder="请输入你的评论...."></textarea>
                                        </div>
                                        <div class="btn-wrapper">
                                            <button onclick="submitComment()"
                                                    class="btn theme-btn-1 btn-effect-1 text-uppercase" type="submit">
                                                <i class="far fa-comments">提交评论</i>
                                            </button>
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


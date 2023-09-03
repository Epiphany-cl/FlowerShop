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
    <!-- 面包屑导航 START -->
    <div class="ltn__breadcrumb-area ltn__breadcrumb-area-4 ltn__breadcrumb-color-white---">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__breadcrumb-inner text-center">
                        <h1 class="ltn__page-title">账户</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="index.jsp">首页</a></li>
                                <li>登录</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA END -->

    <!-- LOGIN AREA START -->
    <div class="ltn__login-area pb-85">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title-area text-center">
                        <h1>登录 <br>到您的账户</h1>
                        <p>绽放真情，芬芳永恒；一束花，千言万语。</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="account-login-inner">
                        <form action="#" class="ltn__form-box contact-form-box">
                            <span id="login_Error" style="color: red;"></span>
                            <input id="login_input_email" type="text" name="email" placeholder="电子邮件*" value="${cookie.email.value}">
                            <input id="login_input_password" type="password" name="password" placeholder="密码*" value="${cookie.password.value}">
                            <div class="btn-wrapper mt-0">
                                <button id="login_button" class="theme-btn-1 btn btn-block" type="button">登录</button>
                            </div>
                           <%-- <div class="go-to-btn mt-20">
                                <a href="#"><small>忘记密码？</small></a>
                            </div>--%>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="account-create text-center pt-50">
                        <h4>还没有账户？</h4>
                        <p>添加商品到愿望清单，获得个性化推荐<br>
                            更快速地结账，跟踪您的订单，注册</p>
                        <div class="btn-wrapper">
                            <a href="register.jsp" class="theme-btn-1 btn black-btn">创建账户</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- LOGIN AREA END -->

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

</div>
<!-- Body main wrapper end -->

<!-- All JS Plugins -->
<script src="js/plugins.js"></script>
<!-- Main JS -->
<script src="js/main.js"></script>
</body>
</html>



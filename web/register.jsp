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
                        <h1 class="ltn__page-title">账户</h1>
                        <div class="ltn__breadcrumb-list">
                            <ul>
                                <li><a href="index.jsp">首页</a></li>
                                <li>注册</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BREADCRUMB AREA END -->

    <!-- LOGIN AREA START (Register) -->
    <div class="ltn__login-area pb-90">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title-area text-center">
                        <h1>注册 <br>您的账户</h1>
                        <p>绽放真情，芬芳永恒；一束花，千言万语。</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="account-login-inner">
                        <form action="UserServlet" class="ltn__form-box contact-form-box">
                            <input type="hidden" name="method" value="registerUser">
                            <span id="nameError" style="color: red;"></span>
                            <input id="input_name" type="text" name="name" placeholder="名字">
                            <span id="emailError" style="color: red;"></span>
                            <input id="input_email" type="text" name="email" placeholder="电子邮件*">
                            <span id="passwordError" style="color: red;"></span>
                            <input id="input_password" type="password" name="password" placeholder="密码*">
                            <span id="confirmPasswordError" style="color: red;"></span>
                            <input id="input_confirm_password" type="password" name="confirm_password"
                                   placeholder="确认密码*">
                            <label class="checkbox-inline">
                                <input id="input_checkbox" type="checkbox" value="">
                                通过点击“创建账户”，我同意隐私政策。
                            </label>
                            <div class="btn-wrapper">
                                <button id="input_button" class="theme-btn-1 btn reverse-color btn-block" type="button"
                                        style="background-color: #aaaaaa">创建账户
                                </button>
                            </div>
                        </form>
                        <div class="by-agree text-center"><br>
                            <p><a href="termsOfServiceAndPrivacyPolicy.jsp">服务条款&nbsp;&nbsp; |
                                &nbsp;&nbsp;隐私政策</a></p>
                            <div class="go-to-btn mt-50">
                                <a href="login.jsp">已经有账户了？</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- LOGIN AREA END -->

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


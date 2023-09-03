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
    <div class="ltn__breadcrumb-area ltn__breadcrumb-area-4 ltn__breadcrumb-color-white---">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ltn__breadcrumb-inner text-center">

                        <h5>花店服务条款</h5>
                        <p>欢迎使用我们的花店服务！在使用本服务前，请仔细阅读以下条款。</p>

                        <h6>1. 订单和支付</h6>
                        <p>1.1 您可以通过我们的网站或实体店铺下订单。在下订单时，请提供准确的联系和付款信息。</p>
                        <p>1.2 我们接受信用卡、支付宝和微信支付等多种支付方式。</p>

                        <h6>2. 送货政策</h6>
                        <p>2.1
                            我们会尽最大努力在您指定的送货时间送达您的订单。然而，由于天气、交通等不可控因素，可能会出现一些延迟。</p>
                        <p>2.2 如因不可抗力因素导致无法按时送达，我们将与您协商新的送货时间。</p>

                        <h6>3. 退款和取消</h6>
                        <p>3.1 您可以在订单送达前取消，并将获得全额退款。</p>
                        <p>3.2 如果您对订单不满意，请在收到货物后的48小时内联系我们，我们将尽力解决问题。</p>

                        <h6>4. 商品质量</h6>
                        <p>4.1
                            我们承诺提供新鲜、高质量的花卉和产品。然而，由于花卉是自然产品，花色和尺寸可能会有轻微差异。</p>
                        <p>4.2 如果您收到的产品质量不符合期望，请及时联系我们，我们将协助处理。</p>

                        <h6>5. 知识产权</h6>
                        <p>5.1 我们的网站和相关内容受版权和知识产权法保护。未经许可，不得复制、修改或传播相关内容。</p>
                        <p>5.2 您提交的自定义订单可能包含您提供的图像或文字。您保留这些内容的知识产权。</p>

                        <h6>6. 免责声明</h6>
                        <p>6.1 在法律允许的范围内，我们不对因使用本服务而导致的任何损失或损害承担责任。</p>
                        <p>6.2 对于因不可抗力、意外事故或其他不可控制因素导致的问题，我们不承担责任。</p>

                        <h6>7. 条款变更</h6>
                        <p>7.1 我们保留随时修改这些条款的权利。修改后的条款将在网站上公布。</p>
                        <p>7.2 您继续使用我们的服务将视为接受修订后的条款。</p>

                        <hr>

                        <h5>隐私政策</h5>
                        <p>欢迎阅读我们的隐私政策。我们致力于保护您的个人信息。</p>

                        <h6>1. 收集的信息</h6>
                        <p>1.1 在下订单时，我们可能收集您的姓名、联系信息、付款信息和送货地址。</p>
                        <p>1.2 我们还可能收集您在客户支持中提供的信息。</p>

                        <h6>2. 信息使用</h6>
                        <p>2.1 我们收集的信息将用于处理订单、提供客户支持和改善服务质量。</p>
                        <p>2.2 我们可能会通过电子邮件向您发送订单确认和促销信息，您可以随时选择取消订阅。</p>

                        <h6>3. 信息共享</h6>
                        <p>3.1 我们不会向第三方出售、交易或共享您的个人信息，除非法律要求或为了订单处理而必要。</p>
                        <p>3.2 我们可能与合作伙伴共享必要的信息，以便更好地提供服务。</p>

                        <h6>4. 数据安全</h6>
                        <p>4.1 我们采取安全措施保护您的信息，防止未经授权的访问、使用或泄露。</p>
                        <p>4.2 但请注意，互联网传输并非绝对安全，您在使用服务时需自行承担风险。</p>

                        <h6>5. Cookie 和跟踪技术</h6>
                        <p>5.1 我们的网站可能使用Cookie和类似技术来改善用户体验。</p>
                        <p>5.2 您可以在浏览器设置中管理和删除Cookie。</p>

                        <h6>6. 隐私政策变更</h6>
                        <p>6.1 我们保留随时更新隐私政策的权利，更新后的政策将在网站上发布。</p>
                        <p>6.2 如有任何隐私相关的问题，请联系我们。</p>

                        <p>最后更新日期：2023年8月25日</p>
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


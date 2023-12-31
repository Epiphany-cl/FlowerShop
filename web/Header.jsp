<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- ltn__header-middle-area start -->
<!-- ltn_header-中间区域启动 -->
<div class="ltn__header-middle-area">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="site-logo">
                    <!-- Logo -->
                    <a href="index.jsp"><img src="img/logo.png" alt="Logo"></a>
                </div>
            </div>
            <div class="col header-contact-serarch-column d-none d-xl-block">
                <div class="header-contact-search">
                    <!-- header-feature-item -->
                    <!-- 标题功能项 -->
                    <!--电话号码以及图标-->
                    <div class="header-feature-item">
                        <div class="header-feature-icon">
                            <i class="icon-phone"></i>
                        </div>
                        <div class="header-feature-info">
                            <h6>电话</h6>
                            <p><a href="tel:123456789">+86123-456-789</a></p>
                        </div>
                    </div>
                    <!-- header-search-2 -->
                    <!-- 搜索 -->
                    <div class="header-search-2 d-none" >
                        <form id="#123" method="get" action="404.html">
                            <input type="text" name="search" value="" placeholder="在此处搜索 . . ."/>
                            <button type="submit">
                                <span><i class="icon-magnifier"></i></span>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col">
                <!-- header-options -->
                <!-- 标头选项 -->
                <div class="ltn__header-options">
                    <ul>
                        <li class="d-none"><!-- d-none 应该是display:none 不显示 -->
                            <!-- ltn__currency-menu -->
                            <!-- ltn货币菜单 -->
                            <!-- 没显示 -->
                            <div class="ltn__drop-menu ltn__currency-menu">
                                <ul>
                                    <li><a href="#" class="dropdown-toggle"><span
                                            class="active-currency">USD</span></a>
                                        <ul>
                                            <li><a href="login.jsp">USD - US Dollar</a></li>
                                            <li><a href="wishlist.html">CAD - Canada Dollar</a></li>
                                            <li><a href="register.jsp">EUR - Euro</a></li>
                                            <li><a href="account.html">GBP - British Pound</a></li>
                                            <li><a href="wishlist.html">INR - Indian Rupee</a></li>
                                            <li><a href="wishlist.html">BDT - Bangladesh Taka</a></li>
                                            <li><a href="wishlist.html">JPY - Japan Yen</a></li>
                                            <li><a href="wishlist.html">AUD - Australian Dollar</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="d-none">
                            <!-- header-search-1 -->
                            <!-- 另一个搜索框 -->
                            <div class="header-search-wrap">
                                <div class="header-search-1">
                                    <div class="search-icon">
                                        <i class="icon-magnifier  for-search-show"></i>
                                        <i class="icon-magnifier-remove  for-search-close"></i>
                                    </div>
                                </div>
                                <div class="header-search-1-form">
                                    <form id="#" method="get" action="#">
                                        <input type="text" name="search" value=""
                                               placeholder="在此处搜索 . . ."/>
                                        <button type="submit">
                                            <span><i class="icon-magnifier"></i></span>
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </li>
                        <li>
                            <!-- user-menu -->
                            <!-- 用户菜单 -->
                            <div class="ltn__drop-menu user-menu">
                                <ul>
                                    <li>
                                        <c:choose>
                                            <c:when test="${empty sessionScope.user}">
                                                <a href="javascript:void(0)"><i class="icon-user"></i></a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="javascript:void(0)"><i class="icon-emotsmile"></i></a>
                                            </c:otherwise>
                                        </c:choose>

                                        <ul>
                                            <c:choose>
                                                <c:when test="${empty sessionScope.user}">
                                                    <li><a href="login.jsp">登录</a></li>
                                                    <li><a href="register.jsp">注册</a></li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li id="header_username" style="color: red">
                                                        ${sessionScope.user.username}
                                                    </li>
                                                    <li><a href="myOrder.jsp">我的订单</a></li>
                                                    <li><a href="UserServlet?method=logout">退出登录</a></li>
                                                </c:otherwise>
                                            </c:choose>

                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <!-- mini-cart 2 -->
                            <!-- 购物车图标 -->
                            <div class="mini-cart-icon mini-cart-icon-2">
                                <a href="#ltn__utilize-cart-menu" class="ltn__utilize-toggle">
                                            <span class="mini-cart-icon">
                                                <i class="icon-handbag"></i>
                                                <!--红色角标-->
                                                <sup>0</sup>
                                            </span>
                                    <h6><span>购物车</span> <span class="ltn__secondary-color">$0.00</span>
                                    </h6>
                                </a>
                            </div>
                        </li>
                        <li>
                            <!-- Mobile Menu Button -->
                            <!-- 移动菜单按钮 -->
                            <div class="mobile-menu-toggle d-lg-none">
                                <a href="#ltn__utilize-mobile-menu" class="ltn__utilize-toggle">
                                    <svg viewBox="0 0 800 600">
                                        <path d="M300,220 C300,220 520,220 540,220 C740,220 640,540 520,420 C440,340 300,200 300,200"
                                              id="top"></path>
                                        <path d="M300,320 L540,320" id="middle"></path>
                                        <path d="M300,210 C300,210 520,210 540,210 C740,210 640,530 520,410 C440,330 300,190 300,190"
                                              id="bottom"
                                              transform="translate(480, 320) scale(1, -1) translate(-480, -318) "></path>
                                    </svg>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ltn__header-middle-area end -->

<!-- header-bottom-area start -->
<!-- 标题栏 -->
<div class="header-bottom-area ltn__border-top ltn__header-sticky  ltn__sticky-bg-white ltn__primary-bg---- menu-color-white---- d-none d-lg-block">
    <div class="container">
        <div class="row">
            <div class="col header-menu-column justify-content-center">
                <div class="sticky-logo">
                    <div class="site-logo">
                        <a href="index.jsp"><img src="img/logo.png" alt="Logo"></a>
                    </div>
                </div>
                <div class="header-menu header-menu-2">
                    <nav>
                        <div class="ltn__main-menu">
                            <ul>
                                <li class="menu-icon">
                                    <a href="index.jsp">主页</a>
                                </li>
                                <li class="menu-icon">
                                    <a href="shop-grid.jsp">商店</a>
                                </li>
                                <li><a href="termsOfServiceAndPrivacyPolicy.jsp">服务条款</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- header-bottom-area end -->


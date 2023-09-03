<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="ltn__utilize-menu-inner ltn__scrollbar">
    <div class="ltn__utilize-menu-head">
        <span class="ltn__utilize-menu-title">购物车</span>
        <!-- 取消按钮 -->
        <button class="ltn__utilize-close">×</button>
    </div>
    <div class="mini-cart-product-area ltn__scrollbar">
        <div class="mini-cart-item clearfix">
            <input class="cart_id" type="hidden" value="0">
            <input class="cart_flowerId" type="hidden" value="0">
            <input class="cart_userId" type="hidden" value="0">
            <div class="mini-cart-img">
                <a onclick="productDetailView_cart(this)" href="javascript:void(0)"><img src="img/product/4.png" alt="图片"></a>
                <span onclick="removeCartItem(this)" class="mini-cart-item-delete"><i class="icon-trash"></i></span>
            </div>
            <div class="mini-cart-info">
                <h6><a href="#">粉色花树</a></h6>
                <span class="mini-cart-quantity">1 x $68.00</span>
            </div>
        </div>
    </div>
    <div class="mini-cart-footer">
        <div class="mini-cart-sub-total">
            <h5>小计: <span>$0.00</span></h5>
        </div>
        <div class="btn-wrapper">
            <a href="cart.jsp" class="theme-btn-1 btn btn-effect-1">查看购物车</a>
            <a href="cart.jsp" class="theme-btn-2 btn btn-effect-2">结账</a>
        </div>
        <p>订单满$100免费送货！</p>
    </div>
</div>

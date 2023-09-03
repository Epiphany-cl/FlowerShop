<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="modal fade" id="quick_view_modal" tabindex="-1">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    <!-- <i class="fas fa-times"></i> -->
                </button>
            </div>
            <div class="modal-body">
                <div class="ltn__quick-view-modal-inner">
                    <div class="modal-product-item">
                        <div id="quick_view" class="row">
                            <div class="col-lg-6 col-12">
                                <div class="modal-product-img">
                                    <img src="img/product/4.png" alt="#">
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="modal-product-info shop-details-info pl-0">
                                    <h3>粉红色花树红色</h3>
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
                                            玫瑰花树，又称玫瑰花藤，是花卉界的珍品。它以其独特的生长方式和绚丽多彩的花朵而闻名。
                                            无论是春夏绽放的盛开，还是秋季的硕果累累，玫瑰花树都以其独特的魅力吸引着无数花卉爱好者。</p>
                                    </div>
                                    <div class="ltn__product-details-menu-2 product-cart-wishlist-btn mb-30">
                                        <input class="quick_view_flowerId" type="hidden" value="0">
                                        <ul>
                                            <li>
                                                <div class="cart-plus-minus">
                                                    <input type="text" value="1" name="qtybutton"
                                                           class="cart-plus-minus-box">
                                                </div>
                                            </li>
                                            <li>
                                                <a onclick="quickAddCartAndNum(this)"
                                                   href="javascript:void(0)"
                                                   class="theme-btn-1 btn btn-effect-1 d-add-to-cart"
                                                   title="加入购物车" data-toggle="modal"
                                                   data-target="#add_to_cart_modal">
                                                    <span>加入购物车</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="btn btn-effect-1 d-add-to-wishlist"
                                                   title="添加到愿望清单" data-toggle="modal"
                                                   data-target="#liton_wishlist_modal">
                                                    <i class="icon-heart"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="ltn__social-media mb-30">
                                        <ul>
                                            <li class="d-meta-title">分享:</li>
                                            <li><a href="#" title="Facebook"><i
                                                    class="icon-social-facebook"></i></a></li>
                                            <li><a href="#" title="Twitter"><i class="icon-social-twitter"></i></a>
                                            </li>
                                            <li><a href="#" title="Pinterest"><i
                                                    class="icon-social-pinterest"></i></a></li>
                                            <li><a href="#" title="Instagram"><i
                                                    class="icon-social-instagram"></i></a></li>

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
</div>


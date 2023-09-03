package dao;

import bean.CartItem;

import java.util.List;

public interface CartItemDao {
    int addCartItem(CartItem cartItem);

    int deleteCartItemById(Integer cartId);

    int updateCartItem(CartItem cartItem);

    CartItem getCartItemById(Integer cartId);

    List<CartItem> getCartItemByUserId(Integer userId);

    CartItem getCartItemByUserIdAndFlowerId(Integer userId, Integer flowerId);

}

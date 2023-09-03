package service;

import bean.CartItem;

import java.util.List;

public interface CartItemService {
    public List<CartItem> getAllCartItemsByUserId(Integer userId);
    public void deleteCartItem(Integer cartItemId);

    public void updateCartItemNum(Integer cartId,Integer delta);
}

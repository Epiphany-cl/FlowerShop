package service.impl;

import bean.CartItem;
import dao.CartItemDao;
import dao.imlp.CartItemDaoImpl;
import service.CartItemService;

import java.util.List;

public class CartItemServiceImpl implements CartItemService {
    private final CartItemDao cartItemDao = new CartItemDaoImpl();

    @Override
    public List<CartItem> getAllCartItemsByUserId(Integer userId) {
        return cartItemDao.getCartItemByUserId(userId);
    }

    @Override
    public void deleteCartItem(Integer cartItemId) {
        cartItemDao.deleteCartItemById(cartItemId);
    }

    @Override
    public void updateCartItemNum(Integer cartId,Integer delta) {
        CartItem cartItem = cartItemDao.getCartItemById(cartId);
        if (cartItem != null) {
            cartItem.setFlowerNumber(cartItem.getFlowerNumber() + delta);
        }
        cartItemDao.updateCartItem(cartItem);
    }
}

package test;

import bean.CartItem;
import dao.CartItemDao;
import dao.imlp.CartItemDaoImpl;
import org.junit.Test;


public class CartItemDaoImplTest {
    private final CartItemDao  cartItemDao = new CartItemDaoImpl();

    @Test
    public void addCartItem() {
        cartItemDao.addCartItem(new CartItem(null, 1, "111", 1,1d, "flower.jpg", 1));
    }

    @Test
    public void deleteCartItem() {
        cartItemDao.deleteCartItemById(4);
    }

    @Test
    public void updateCartItem() {
        CartItem cartItemById = cartItemDao.getCartItemById(3);
        cartItemById.setFlowerNumber(999);
        System.out.println(cartItemById);
        cartItemDao.updateCartItem(cartItemById);
    }

    @Test
    public void getCartItemById() {
    }

    @Test
    public void getCartItemByUserId() {
    }

    @Test
    public void getCartItemByUserIdAndFlowerId() {
    }
}
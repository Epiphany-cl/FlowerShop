package dao.imlp;

import bean.CartItem;
import dao.CartItemDao;
import org.junit.Test;
import utils.BaseDao;

import java.util.List;

public class CartItemDaoImpl extends BaseDao<CartItem> implements CartItemDao {

    @Override
    public int addCartItem(CartItem cartItem) {
        return super.update(
                "insert into t_cart_item(flower_id, flower_name, flower_number, flower_price, flower_img_path, user_id) value (?,?,?,?,?,?);",
                cartItem.getFlowerId(),
                cartItem.getFlowerName(),
                cartItem.getFlowerNumber(),
                cartItem.getFlowerPrice(),
                cartItem.getFlowerImgPath(),
                cartItem.getUserId()
        );
    }

    @Override
    public int deleteCartItemById(Integer cartId) {
        return super.update("delete from t_cart_item where cart_id = ?", cartId);
    }

    @Override
    public int deleteCartItemByUserId(Integer userId) {
        return super.update("delete from t_cart_item where user_id = ?", userId);
    }

    @Override
    public int updateCartItem(CartItem cartItem) {
        return super.update(
                "update t_cart_item set flower_number = ?, flower_name = ?, flower_price = ?, flower_img_path = ? where cart_id = ?;",
                cartItem.getFlowerNumber(),
                cartItem.getFlowerName(),
                cartItem.getFlowerPrice(),
                cartItem.getFlowerImgPath(),
                cartItem.getCartId()
        );
    }

    @Override
    public CartItem getCartItemById(Integer cartId) {
        return super.getBean(
                "select * from t_cart_item where cart_id = ?;",
                cartId
        );
    }

    @Override
    public List<CartItem> getCartItemByUserId(Integer userId) {
        return super.getBeanList(
                "select * from t_cart_item where user_id = ? order by cart_id desc;",
                userId
        );
    }

    @Override
    public CartItem getCartItemByUserIdAndFlowerId(Integer userId, Integer flowerId) {
        return super.getBean(
                "select * from t_cart_item where user_id = ? and flower_id = ?;",
                userId,
                flowerId
        );
    }
}

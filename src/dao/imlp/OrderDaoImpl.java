package dao.imlp;

import bean.Order;
import dao.OrderDao;
import utils.BaseDao;

import java.util.List;

public class OrderDaoImpl extends BaseDao<Order> implements OrderDao {
    @Override
    public void saveOrder(Order order) {
        super.update(
                "insert into t_order(order_id, order_username, order_phone, order_nation, order_address, order_paymentMode, order_priceTotal, user_id, state) value (?,?,?,?,?,?,?,?,?);",
                order.getOrderId(),
                order.getOrderUsername(),
                order.getOrderPhone(),
                order.getOrderNation(),
                order.getOrderAddress(),
                order.getOrderPaymentMode(),
                order.getOrderPriceTotal(),
                order.getUserId(),
                order.getState()
        );
    }

    @Override
    public Order findOrderById(String orderId) {
        return super.getBean(
                "select * from t_order where order_id = ?;",
                orderId
        );
    }

    @Override
    public List<Order> getAllOrder(int userId) {
        return super.getBeanList(
                "select * from t_order where user_id = ?;",
                userId
        );
    }
}

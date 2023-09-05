package dao;

import bean.Order;

public interface OrderDao {
    public void saveOrder(Order order);

    public Order findOrderById(String orderId);
}

package dao;

import bean.Order;

import java.util.List;

public interface OrderDao {
    public void saveOrder(Order order);

    public Order findOrderById(String orderId);

    public List<Order> getAllOrder(int userId);
}

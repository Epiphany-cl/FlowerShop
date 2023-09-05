package service;

import bean.Order;

import java.util.List;

public interface OrderService {
   public String submitOrder(Order order);

   public Order findOrderById(String orderId);

   public List<Order> findAllOrder(int userId);
}

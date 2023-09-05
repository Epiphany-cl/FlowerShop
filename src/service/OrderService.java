package service;

import bean.Order;

public interface OrderService {
   public String submitOrder(Order order);

   public Order findOrderById(String orderId);
}

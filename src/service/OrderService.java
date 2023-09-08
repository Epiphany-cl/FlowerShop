package service;

import bean.Order;
import bean.OrderDetailInfo;

import java.util.List;

public interface OrderService {
   public String submitOrder(Order order);

   public Order findOrderById(String orderId);

   public List<Order> findAllOrder(int userId);

   public OrderDetailInfo findOrderDetail(String orderId);
}

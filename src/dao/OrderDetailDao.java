package dao;

import bean.OrderDetail;

import java.util.List;

public interface OrderDetailDao {
    public void saveOrderDetail(OrderDetail orderDetail);

    public List<OrderDetail> getOrderDetailsByOrderId(String orderId);
}

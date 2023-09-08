package service.impl;

import bean.*;
import dao.CartItemDao;
import dao.FlowerDao;
import dao.OrderDao;
import dao.OrderDetailDao;
import dao.imlp.CartItemDaoImpl;
import dao.imlp.FlowerDaoImpl;
import dao.imlp.OrderDaoImpl;
import dao.imlp.OrderDetailDaoImpl;
import org.junit.Test;
import service.OrderService;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class OrderServiceImpl implements OrderService {
    private final FlowerDao flowerDao = new FlowerDaoImpl();
    private final OrderDao orderDao = new OrderDaoImpl();
    private final CartItemDao cartItemDao = new CartItemDaoImpl();
    private final OrderDetailDao orderDetailDao = new OrderDetailDaoImpl();

    /**
     * 下单
     *
     * @return 订单号
     */
    @Override
    public String submitOrder(Order order) {
        //获得一个随机订单号
        String randomId = generateOrderNumber();

        order.setOrderId(randomId);
        orderDao.saveOrder(order);

        //添加订单详细信息
        //获得用户信息
        List<CartItem> items = cartItemDao.getCartItemByUserId(order.getUserId());
        for (CartItem item : items) {
            OrderDetail orderDetail = new OrderDetail(
                    null,
                    randomId,
                    item.getFlowerId(),
                    item.getFlowerNumber()
            );

            orderDetailDao.saveOrderDetail(orderDetail);
        }

        //删除购物车信息
        cartItemDao.deleteCartItemByUserId(order.getUserId());

        return randomId;
    }

    @Override
    public Order findOrderById(String orderId) {
        return orderDao.findOrderById(orderId);
    }

    @Override
    public List<Order> findAllOrder(int userId) {
        return orderDao.getAllOrder(userId);
    }

    @Override
    public OrderDetailInfo findOrderDetail(String orderId) {
        List<OrderDetail> orderDetails = orderDetailDao.getOrderDetailsByOrderId(orderId);


        List<CartItem> items = new ArrayList<>();

        double priceTotal = 0d;

        for (OrderDetail orderDetail : orderDetails) {
            Integer flowerId = orderDetail.getFlowerId();


            Flower flowerInfo = flowerDao.getFlowerById(flowerId);
            String flowerName = flowerInfo.getFlowerName();
            Integer flowerNum = orderDetail.getFlowerNum();
            Double sellingPrice = flowerInfo.getSellingPrice();

            CartItem cartItem = new CartItem();
            cartItem.setFlowerId(flowerId);
            cartItem.setFlowerName(flowerName);
            cartItem.setFlowerNumber(flowerNum);
            cartItem.setFlowerPrice(sellingPrice);

            items.add(cartItem);

            priceTotal += flowerNum * sellingPrice;

        }

        OrderDetailInfo orderDetailInfo = new OrderDetailInfo();
        orderDetailInfo.setOrderId(orderId);
        orderDetailInfo.setItems(items);
        orderDetailInfo.setPriceTotal(priceTotal);

        return orderDetailInfo;
    }

    @Test
    public void findOrderDetail() {
        OrderDetailInfo orderDetail = new OrderServiceImpl().findOrderDetail("f8f968c92696438");
        System.out.println(orderDetail);
    }

    //随机生成订单号
    private static String generateOrderNumber() {
        // 生成一个UUID
        UUID uuid = UUID.randomUUID();

        // 获取UUID的字符串表示形式（去掉中间的短划线）
        String uuidString = uuid.toString().replace("-", "");

        // 截取前面固定位数作为订单号，可以根据需要进行调整
        int orderNumberLength = 15; // 你想要的订单号位数

        return uuidString.substring(0, orderNumberLength);
    }

}

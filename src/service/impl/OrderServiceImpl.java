package service.impl;

import bean.CartItem;
import bean.Order;
import bean.OrderDetail;
import dao.CartItemDao;
import dao.OrderDao;
import dao.OrderDetailDao;
import dao.imlp.CartItemDaoImpl;
import dao.imlp.OrderDaoImpl;
import dao.imlp.OrderDetailDaoImpl;
import service.OrderService;

import java.util.List;
import java.util.Map;
import java.util.UUID;

public class OrderServiceImpl implements OrderService {
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

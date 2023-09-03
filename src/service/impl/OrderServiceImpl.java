package service.impl;

import bean.Order;
import dao.OrderDao;
import dao.imlp.OrderDaoImpl;
import service.OrderService;

import java.util.Map;
import java.util.UUID;

public class OrderServiceImpl implements OrderService {
    private final OrderDao orderDao = new OrderDaoImpl();

    /**
     * 下单
     * @return 订单号
     */
    @Override
    public String submitOrder(Order order) {
        String randomId = generateOrderNumber();
        order.setOrderId(randomId);
        orderDao.saveOrder(order);

        //添加订单详细信息

        //删除购物车信息

        return randomId;
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

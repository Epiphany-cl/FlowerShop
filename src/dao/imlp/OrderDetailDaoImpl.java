package dao.imlp;

import bean.OrderDetail;
import dao.OrderDetailDao;
import utils.BaseDao;

public class OrderDetailDaoImpl extends BaseDao<OrderDetail> implements OrderDetailDao {

    @Override
    public void saveOrderDetail(OrderDetail orderDetail) {
        super.update(
                "insert into t_orderdetail(order_id, flower_id, flower_num) value (?,?,?);",
                orderDetail.getOrderId(),
                orderDetail.getFlowerId(),
                orderDetail.getFlowerNum()
        );
    }
}

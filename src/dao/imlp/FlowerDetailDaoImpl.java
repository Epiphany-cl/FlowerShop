package dao.imlp;

import bean.FlowerDetail;
import dao.FlowerDetailDao;
import utils.BaseDao;

import java.util.List;

public class FlowerDetailDaoImpl extends BaseDao<FlowerDetail> implements FlowerDetailDao {
    @Override
    public FlowerDetail getFlowerDetailById(Integer flowerId) {
        return super.getBean("select * from t_flower_detail where flower_id = ?;", flowerId);
    }

    @Override
    public List<FlowerDetail> getFlowersCategoriesById(Integer flowerId) {
        return super.getBeanList(
                "select * from t_flower_detail where categories = (select categories from t_flower_detail where flower_id = ?);",
                flowerId);
    }
}

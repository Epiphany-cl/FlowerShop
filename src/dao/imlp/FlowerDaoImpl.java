package dao.imlp;

import bean.Flower;
import dao.FlowerDao;
import utils.BaseDao;

import java.util.List;

public class FlowerDaoImpl extends BaseDao<Flower> implements FlowerDao {
    @Override
    public void addFlower(Flower flower) {
        super.update(
                "insert into t_flower(flower_name, list_price, selling_price, flower_img_path) value (?,?,?,?);",
                flower.getFlowerName(),
                flower.getListPrice(),
                flower.getSellingPrice(),
                flower.getFlowerImgPath());
    }

    @Override
    public int deleteFlowerById(int flowerId) {
        return super.update("delete from t_flower where flower_id = ?;", flowerId);
    }

    @Override
    public void updateFlower(Flower flower) {
        super.update(
                "update t_flower set flower_name = ? ,list_price = ?,selling_price = ?,flower_img_path = ? where flower_id = ?;",
                flower.getFlowerName(),
                flower.getListPrice(),
                flower.getSellingPrice(),
                flower.getFlowerImgPath(),
                flower.getFlowerId());
    }

    @Override
    public Flower getFlowerById(Integer flowerId) {
        return super.getBean("select * from t_flower where flower_id = ?;", flowerId);
    }

    @Override
    public List<Flower> getAllFlowers() {
        return super.getBeanList("select * from t_flower;");
    }

    @Override
    public Integer getTotalCount() {
        return super.getValue("select count(*) from t_flower;").intValue();
    }

    @Override
    public List<Flower> getFlowersByPage(int pageNo, int pageSize) {
        return super.getBeanList("select * from t_flower limit ?,?;", (pageNo - 1) * pageSize, pageSize);
    }
}

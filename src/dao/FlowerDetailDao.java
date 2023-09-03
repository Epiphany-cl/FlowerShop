package dao;

import bean.FlowerDetail;

import java.util.List;

public interface FlowerDetailDao {
    public FlowerDetail getFlowerDetailById(Integer flowerId);
    public List<FlowerDetail> getFlowersCategoriesById(Integer flowerId);
}

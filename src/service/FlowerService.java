package service;

import bean.Flower;
import bean.FlowerDetail;
import utils.Page;

import java.util.List;

public interface FlowerService {
    public Flower getFlowerById(Integer flowerId);
    public List<Flower> getAllFlowers();
    public Page<Flower> getFlowersByPage(int pageNo, int pageSize);
    public FlowerDetail  getFlowerDetailById(Integer flowerId);

    public List<FlowerDetail> getFlowersCategoriesById(Integer flowerId);

    @Deprecated
    public boolean addCartItem(Integer flowerId, Integer userId);


    public boolean addCartItem(Integer flowerId, Integer userId, Integer number);
}

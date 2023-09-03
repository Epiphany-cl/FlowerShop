package dao;

import bean.Flower;

import java.util.List;

public interface FlowerDao {
    public void addFlower(Flower flower);
    public int deleteFlowerById(int flowerId);
    public void updateFlower(Flower flower);
    public Flower getFlowerById(Integer flowerId);
    public List<Flower> getAllFlowers();
    public Integer getTotalCount();
    public List<Flower> getFlowersByPage(int pageNo, int pageSize);

}

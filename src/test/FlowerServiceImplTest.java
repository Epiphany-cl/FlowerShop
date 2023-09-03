package test;

import bean.Flower;
import bean.FlowerDetail;
import dao.FlowerDetailDao;
import dao.imlp.FlowerDetailDaoImpl;
import org.junit.Test;
import service.FlowerService;
import service.impl.FlowerServiceImpl;
import utils.Page;

import java.util.List;

import static org.junit.Assert.*;

public class FlowerServiceImplTest {
    private final FlowerService flowerService = new FlowerServiceImpl();
    private final FlowerDetailDao  flowerDetailDao = new FlowerDetailDaoImpl();
    @Test
    public void getFlowerById() {
    }

    @Test
    public void getAllFlowers() {
    }

    @Test
    public void getFlowersByPage() {
        Page<Flower> flowersByPage = flowerService.getFlowersByPage(1, 8);
        List<Flower> items = flowersByPage.getItems();
        items.forEach(System.out::println);
    }
    @Test
    public void getFlowerDetailById() {
        FlowerDetail flowerDetail = flowerDetailDao.getFlowerDetailById(1);
        System.out.println(flowerDetail);
    }
}
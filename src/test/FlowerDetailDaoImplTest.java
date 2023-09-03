package test;

import bean.FlowerDetail;
import dao.imlp.FlowerDetailDaoImpl;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class FlowerDetailDaoImplTest {
    private final FlowerDetailDaoImpl flowerDetailDao = new FlowerDetailDaoImpl();

    @Test
    public void getFlowerDetailById() {
        FlowerDetail flowerDetail = flowerDetailDao.getFlowerDetailById(1);
        System.out.println(flowerDetail);
    }

    @Test
    public void getFlowersCategoriesById(){

        List<FlowerDetail> flowerDetails = flowerDetailDao.getFlowersCategoriesById(1);
        System.out.println(flowerDetails.size());
    }
}
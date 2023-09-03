package test;

import dao.imlp.FlowerDaoImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class FlowerDaoImplTest {
    private final FlowerDaoImpl flowerDao = new FlowerDaoImpl();

    @Test
    public void addFlower() {
    }

    @Test
    public void deleteFlowerById() {
    }

    @Test
    public void updateFlower() {
    }

    @Test
    public void getFlowerById() {
        System.out.println(flowerDao.getFlowerById(1));
    }

    @Test
    public void getAllFlowers() {
        flowerDao.getAllFlowers().forEach(System.out::println);
    }
}
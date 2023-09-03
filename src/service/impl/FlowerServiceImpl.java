package service.impl;

import bean.CartItem;
import bean.Flower;
import bean.FlowerDetail;
import dao.CartItemDao;
import dao.FlowerDetailDao;
import dao.imlp.CartItemDaoImpl;
import dao.imlp.FlowerDaoImpl;
import dao.imlp.FlowerDetailDaoImpl;
import service.FlowerService;
import utils.Page;

import java.util.List;

public class FlowerServiceImpl implements FlowerService {
    private final FlowerDaoImpl flowerDao = new FlowerDaoImpl();
    private final FlowerDetailDao flowerDetailDao = new FlowerDetailDaoImpl();
    private final CartItemDao cartItemDao = new CartItemDaoImpl();

    @Override
    public Flower getFlowerById(Integer flowerId) {
        return flowerDao.getFlowerById(flowerId);
    }

    @Override
    public List<Flower> getAllFlowers() {
        return flowerDao.getAllFlowers();
    }

    @Override
    public Page<Flower> getFlowersByPage(int pageNo, int pageSize) {
        Page<Flower> flowerPage = new Page<>();
        flowerPage.setPageNo(pageNo);
        flowerPage.setPageSize(pageSize);
        flowerPage.setPageTotalCount(flowerDao.getTotalCount());

        //设置最大页数
        if (flowerPage.getPageTotalCount() % flowerPage.getPageSize() == 0) {
            flowerPage.setPageTotal(flowerPage.getPageTotalCount() / flowerPage.getPageSize());
        } else {
            flowerPage.setPageTotal(flowerPage.getPageTotalCount() / flowerPage.getPageSize() + 1);
        }

        //设置页数范围囦
        if (flowerPage.getPageNo() < 1) {
            flowerPage.setPageNo(1);
        }
        if (flowerPage.getPageNo() > flowerPage.getPageTotal()) {
            flowerPage.setPageNo(flowerPage.getPageTotal());
        }

        //设置items
        List<Flower> flowersByPage = flowerDao.getFlowersByPage(pageNo, pageSize);
        flowerPage.setItems(flowersByPage);

        return flowerPage;
    }

    @Override
    public FlowerDetail getFlowerDetailById(Integer flowerId) {
        return flowerDetailDao.getFlowerDetailById(flowerId);
    }

    @Override
    public List<FlowerDetail> getFlowersCategoriesById(Integer flowerId) {
        return flowerDetailDao.getFlowersCategoriesById(flowerId);
    }

    @Override
    public boolean addCartItem(Integer flowerId, Integer userId) {
        int row;

        //判断该用户的购物车中是否存在该flower
        CartItem cartItem = cartItemDao.getCartItemByUserIdAndFlowerId(userId, flowerId);
        if (cartItem != null) {
            //如EXISTS, 则替换数量
            cartItem.setFlowerNumber(cartItem.getFlowerNumber() + 1);
            row = cartItemDao.updateCartItem(cartItem);
        } else {
            //如不存在, 则添加
            cartItem = new CartItem();
            Flower flower = flowerDao.getFlowerById(flowerId);
            cartItem.setFlowerId(flowerId);
            cartItem.setFlowerName(flower.getFlowerName());
            cartItem.setFlowerPrice(flower.getSellingPrice());
            cartItem.setFlowerImgPath(flower.getFlowerImgPath());
            cartItem.setFlowerNumber(1);
            cartItem.setUserId(userId);
            row = cartItemDao.addCartItem(cartItem);
        }

        return row == 1;
    }

    @Override
    public boolean addCartItem(Integer flowerId, Integer userId, Integer number) {
        int row;
        //判断这一项是否存圠
        CartItem cartItem = cartItemDao.getCartItemByUserIdAndFlowerId(userId, flowerId);
        if (cartItem != null) {
            //如EXISTS, 则替换数量
            cartItem.setFlowerNumber(cartItem.getFlowerNumber() + number);
            row = cartItemDao.updateCartItem(cartItem);
        }
        else {
            //如不存圠, 则添加
            cartItem = new CartItem();
            Flower flower = flowerDao.getFlowerById(flowerId);
            cartItem.setFlowerId(flowerId);
            cartItem.setFlowerName(flower.getFlowerName());
            cartItem.setFlowerPrice(flower.getSellingPrice());
            cartItem.setFlowerImgPath(flower.getFlowerImgPath());
            cartItem.setFlowerNumber(number);
            cartItem.setUserId(userId);
            row = cartItemDao.addCartItem(cartItem);
        }
        return row == 1;
    }

}

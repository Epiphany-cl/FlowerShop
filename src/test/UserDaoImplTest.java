package test;

import bean.User;
import dao.UserDao;
import dao.imlp.UserDaoImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserDaoImplTest {
    private final UserDao userDao = new UserDaoImpl();

    @Test
    public void queryUserByEmail() {
        System.out.println(userDao.queryUserByEmail("admin@admin.com"));
    }

    @Test
    public void queryUserByEmailAndPassword() {
        System.out.println(userDao.queryUserByEmailAndPassword("admin@admin.com", "1234"));
    }

    @Test
    public void saveUser() {
        int i = userDao.saveUser(new User(null, "小红", "xiaohong@qq.com", "1234"));
        System.out.println(i);
        User user = userDao.queryUserByEmail("xiaohong@qq.com");
        System.out.println(user);
    }
}
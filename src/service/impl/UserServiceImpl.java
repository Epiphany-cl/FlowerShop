package service.impl;

import bean.User;
import dao.UserDao;
import dao.imlp.UserDaoImpl;
import service.UserService;

import java.util.Objects;
import java.util.Random;

public class UserServiceImpl implements UserService {
    private final UserDao userDao = new UserDaoImpl();

    @Override
    public int registerUser(User user) {
        //如果用户没有输入name 就随机生成一个名字
        if (user.getUsername() == null){
           user.setUsername(getRandomFlowerUsername());
        }
        return userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.queryUserByEmailAndPassword(user.getEmail(), user.getPassword());
    }

    @Override
    public boolean existsUser(String email) {
        return userDao.queryUserByEmail(email) == null;
    }

    //随机得到一个名字
    public static String getRandomFlowerUsername() {
        String[] flowerUsernames = {
                "花海漫步", "清新花语", "花开彼岸", "花恋时光", "花语微笑",
                "花舞心情", "花间流年", "花香袭人", "花影摇曳", "花漾心灵",
                "花开寂寞", "花开如约", "花朝月夕", "花语倾城", "花样年华",
                "花落无声", "花开无声", "花开寂寞", "花开如梦", "花事如初",
                "花开半夏", "花开花落", "花开似火", "花开如画", "花开依旧",
                "花落知多少", "花开堪折直须折", "花前月下", "花好月圆", "花好人间",
                "花信年华", "花开花谢", "花好阴天", "花醉人间", "花影随风",
                "花好月常圆", "花舞人间", "花开似锦", "花开花谢，人生无悔", "花开花落，人生如戏",
                "花开花又落", "花儿如梦", "花开彼岸，花落此间", "花之颜色", "花开花谢，君心不变",
                "花影飘香", "花落如画", "花开成海", "花开花败", "花信年华，人如画",
                "花开堪折直须折，莫待无花空折枝", "花开无声，人去无踪", "花落花开，似水年华", "花开花谢，人生如诗", "花间一壶酒，独酌无相亲",
                "花好月圆人团圆", "花好月圆人圆梦", "花好月圆人欢笑", "花好月圆人情浓", "花好月圆人幸福",
                "花开花落人如梦", "花开花落人自在", "花事年华人如画", "花开花事人堪察", "花开花落人心安",
                "花事花开人自足", "花好人团圆", "花好人幸福", "花开花落人安乐", "花事年华人欢笑",
                "花事花开人心好", "花香芬芳人自在", "花开花事人间好", "花开花事人如诗", "花事花开人心美",
                "花好花香人如意", "花香花开人欣喜", "花开花事人情暖", "花开花落人生好", "花事花开人心悦"
        };

        Random random = new Random();
        int randomIndex = random.nextInt(flowerUsernames.length);
        return flowerUsernames[randomIndex];
    }
}

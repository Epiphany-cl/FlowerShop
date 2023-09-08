package dao.imlp;

import bean.User;
import dao.UserDao;
import utils.BaseDao;

public class UserDaoImpl extends BaseDao<User> implements UserDao {
    @Override
    public User queryUserByEmail(String email) {
        return this.getBean("select  * from t_user where email = ?;", email);
    }

    @Override
    public User queryUserByEmailAndPassword(String email, String password) {
        return this.getBean("select  * from t_user where email = ? and password =?;",
                email,
                password);
    }

    @Override
    public int saveUser(User user) {
        return super.update("insert into t_user(username, email, password) value (?,?,?);",
                user.getUsername(),
                user.getEmail(),
                user.getPassword());
    }

    @Override
    public User queryUserByUserId(int userId) {
        return super.getBean(
                "select * from t_user where id = ?;",
                userId
        );
    }
}

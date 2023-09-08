package dao;

import bean.User;

public interface UserDao {
    /**
     * 根据用户名查询用户信息
     *
     * @param email 邮箱
     * @return 如果返回null, 说明没有这个用户。反之亦然
     */
    public User queryUserByEmail(String email);

    /**
     * 根据 用户名和密码查询用户信息
     *
     * @param email 邮箱
     * @param password 密码
     * @return 如果返回null, 说明用户名或密码错误, 反之亦然
     */
    public User queryUserByEmailAndPassword(String email, String password);

    /**
     * 保存用户信息
     *
     * @param user 用户对象
     * @return 返回-1 表示操作失败，其他是sql 语句影响的行数
     */
    public int saveUser(User user);

    public  User queryUserByUserId(int userId);
}

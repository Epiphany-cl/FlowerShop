package service;

import bean.User;

public interface UserService {

    /**
     * 注册用户
     */
    public int registerUser(User user);

    /**
     * 登录
     *
     * @return 如果返回null，说明登录失败，返回有值，是登录成功
     */
    public User login(User user);

    /**
     * 检查 用户名是否可用
     *
     * @return 返回true 表示用户名已存在，返回false 表示用户名可用
     */
    public boolean existsUser(String email);
}

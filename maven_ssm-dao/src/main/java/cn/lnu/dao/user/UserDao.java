package cn.lnu.dao.user;

import cn.lnu.entity.user.User;

/**
 * @author ChengChuangLiang
 * @date 2018/7/21
 */
public interface UserDao {
    public User login(User user);
}

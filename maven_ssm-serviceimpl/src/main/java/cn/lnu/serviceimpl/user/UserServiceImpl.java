package cn.lnu.serviceimpl.user;

import cn.lnu.entity.User;
import cn.lnu.dao.user.UserDao;
import cn.lnu.service.UserService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;

/**
 * @author ChengChuangLiang
 * @date 2018/7/21
 */
@Service("userService")
public class UserServiceImpl implements UserService{

    @Resource
    private UserDao userDao;

    @Override
    public User login(User user) {
        return userDao.login(user);
    }



}

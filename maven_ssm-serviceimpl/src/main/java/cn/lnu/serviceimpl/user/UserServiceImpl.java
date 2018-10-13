package cn.lnu.serviceimpl.user;

import cn.lnu.entity.user.User;
import cn.lnu.dao.user.UserDao;
import cn.lnu.service.user.UserService;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;

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

    @Override
    public List<User> find() {
        List<User> list = null;
        try {
             list = userDao.find(); //执行异常打印异常信息
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }


}

package cn.lnu.serviceimpl.user;

import cn.lnu.dao.user.UserDao;
import cn.lnu.entity.user.User;
import org.junit.Test;

import javax.annotation.Resource;

import static org.junit.Assert.*;

/**
 * @author： CCL
 * @date:2018/10/6
 * description:
 */
public class UserServiceImplTest {

    @Resource
    private UserDao userDao;


    @Test
    public void login() {

        User user = new User("1","1");

        User resultUser = userDao.login(user);

        System.out.println(user.toString());


    }
}
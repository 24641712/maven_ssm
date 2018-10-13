package cn.lnu.controller.user;

import cn.lnu.entity.user.User;
import cn.lnu.service.user.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.*;

/**
 * @author： CCL
 * @date:
 * description:
 */

//@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:config/applicationContext.xml"})
public class UserControllerTest {

    @Autowired
    private UserService userService;

    @Test
    public void returnLoginCheck() {

        User user = new User("1","1");

        User resultUser = userService.login(user);

        System.out.println(resultUser.toString());

    }

}
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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:config/applicationContext.xml",
                              "classpath:config/spring-mvc.xml"})
public class UserControllerTest {

    @Resource
    private UserService userService;

    @Test
    public void returnRegister() {

        User user = new User("华英雄","123456");

        int result = userService.register(user);

        System.out.println("test:"+result);

    }

}
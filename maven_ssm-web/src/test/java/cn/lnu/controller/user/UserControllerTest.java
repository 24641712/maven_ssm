package cn.lnu.controller.user;

import cn.lnu.entity.user.User;
import cn.lnu.service.user.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * 测试单元
 * @author： ccl
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:config/applicationContext.xml",
                              "classpath:config/spring-mvc.xml"})
public class UserControllerTest {

    @Autowired
    private UserService userService;

    @Test
    public void returnRegister() {
        User user = new User("华英雄","123456");
        int result = userService.register(user);
        System.out.println("test:"+result);
    }

    @Test
    public void returnSendEmail(){
        userService.sendEmail();
    }




}
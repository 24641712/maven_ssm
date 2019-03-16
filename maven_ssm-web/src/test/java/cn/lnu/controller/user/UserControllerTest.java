package cn.lnu.controller.user;

import cn.lnu.entity.user.User;
import cn.lnu.service.user.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

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
        int result = userService.registerUser(user);
        System.out.println("test:"+result);
    }

    @Test
    public void returnSendEmail(){
        userService.sendEmail();
    }

    @Test
    public void testFindAllUsers(){
        List<User> list = new ArrayList<>();
        list = userService.findAllUsers();
        for(User user:list){
            System.out.println(user.toString());
        }
    }

    @Test
    public void testFindbyPrimaryKey(){
        User user = userService.selectByPrimaryKey(2);
        System.out.println(user.toString());
    }








}
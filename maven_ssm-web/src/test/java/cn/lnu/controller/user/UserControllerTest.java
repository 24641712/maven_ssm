package cn.lnu.controller.user;

import cn.lnu.entity.cache.GetCache;
import cn.lnu.entity.user.User;
import cn.lnu.service.user.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @Test
    public void returnSendEmail(){
        userService.sendEmail();

    }

    @Test
    @GetCache(name="room",value="id")
    @RequestMapping("selectByPrimaryKey")
    public @ResponseBody Object roomList(Integer id) throws Exception{
        System.out.println("已查询到数据，准备缓存到redis... "+
                userService.selectByPrimaryKey(id).getUsername());
        return userService.selectByPrimaryKey(id);
    }



}
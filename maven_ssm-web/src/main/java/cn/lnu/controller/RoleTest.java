package cn.lnu.controller;

import cn.lnu.entity.user.Role;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * Created by CCL on 2018/11/28 0028 下午 6:35
 *
 * @description:
 */
public class RoleTest {

    public static void main(String[] args) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath*:config/applicationContext.xml");
        RedisTemplate redisTemplate = applicationContext.getBean(RedisTemplate.class);
        Role role = new Role();
        role.setId(1L);
        role.setRolename("role_name-1");
        role.setNote("note_1");
//        redisTemplate.opsForValue().set("role_1", role);
        redisTemplate.opsForValue().set("name","cheng");
        Role role1 = (Role) redisTemplate.opsForValue().get("role_1");
        String name = (String)redisTemplate.opsForValue().get("name2");
        System.out.println(role1+"  "+name);

    }

}

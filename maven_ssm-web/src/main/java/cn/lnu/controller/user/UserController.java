package cn.lnu.controller.user;

import cn.lnu.entity.MD5.MD5Util;
import cn.lnu.entity.user.User;
import cn.lnu.service.user.UserService;
import cn.lnu.utils.cache.GetCache;
import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author CCL
 * @date 2018/7/21
 */
@Controller
@RequestMapping("/user")
public class UserController {

    //依赖注入
    @Resource
    private UserService userService;

    @RequestMapping("/Hello")
    public String returnLogin(Model model){
        model.addAttribute("message","我要登录");
        System.out.println("Login(登录)");
        return "jspLogin";
    }

    @RequestMapping("/Login")
    public String returnHello(Model model){
        System.out.println("尝试一下");
        return "/jspLogin";
    }

    @RequestMapping("/Test")
    public String returnTest(Model model){
        System.out.println("尝试一下");
        return "/jspLogin";
    }

    @GetCache(name="room",value="id")
    @ResponseBody
    @RequestMapping("/zhujie")
    public Object returnZhujie(){
        System.out.println("已查询到数据，准备缓存到redis..."+
                userService.selectByPrimaryKey(1).getUsername());
        return userService.selectByPrimaryKey(1);
    }

    @ResponseBody
    @RequestMapping(value = "/loginCheck",method = RequestMethod.POST)
    public String returnLoginCheck(String username,String password,HttpServletRequest request){
        User user = new User(username,password);
        System.out.println(user.toString());
        HttpSession session = request.getSession();
        session.setAttribute("username",username);
        User resultUser = userService.login(user);
        if(resultUser != null){
            System.out.println(resultUser.toString());
            System.out.println("用户登录成功");
            return "true";
        }else{
            System.out.println("用户不存在");
            return "false";
        }
    }

    @RequestMapping("/register")
    public String returnRegister(Model model){
        return "/register";
    }

    @RequestMapping("/sign")
    public String returnSign(Model model){
        return "/sign";
    }

    @ResponseBody
    @RequestMapping(value = "/loginout",method = RequestMethod.POST)
    public static String returnLoginOut(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("username");
        System.out.println("session="+session.getAttribute("username"));
        if(session.getAttribute("username")==null){
            System.out.println("ok");
        }else {
            System.out.println("no ok");
        }
        return "ok";
    }



    //  用ajax实现注册功能
    @RequestMapping(value = "/userRegister",method = RequestMethod.POST)
    @ResponseBody
    public String returnRegisterCheck(HttpServletRequest request,@RequestBody User user){
        System.out.println("用户注册");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        System.out.println(username+password+phone);

    //    int result = userService.register(user);
    //    System.out.println("result:"+result);
    //    if(result == 1){
    //        System.out.println("用户注册成功");
    //        return "true";
    //    }else{
    //        System.out.println("用户不存在");
    //        return "false";
    //    }
        return null;
    }






}

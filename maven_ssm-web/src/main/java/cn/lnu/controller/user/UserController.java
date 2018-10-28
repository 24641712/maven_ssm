package cn.lnu.controller.user;

import cn.lnu.entity.MD5.MD5Util;
import cn.lnu.entity.user.User;
import cn.lnu.service.user.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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

    @RequestMapping("/Login")
    public String returnLogin(Model model){

        model.addAttribute("message","我要登录");

        System.out.println("Login(登录)");

        return "jspLogin";

    }

    @ResponseBody
    @RequestMapping(value = "/loginCheck",method = RequestMethod.POST)
    public String returnLoginCheck(String username,String password,HttpServletRequest request){

        User user = new User(username,password);

        System.out.println("用户密码是："+MD5Util.getMd5("123456"));

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

        model.addAttribute("message","我要注册");

        System.out.println("注册");

        return "/register";

    }

    @RequestMapping("/sign")
    public String returnSign(Model model){

        model.addAttribute("message","我要登录");

        System.out.println("sign（登录）");

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

}

package cn.lnu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ChengChuangLiang
 * @date 2018/7/21
 */
@Controller
@RequestMapping("/index")
public class IndexController {

    @RequestMapping("index")
    public String returnIndex(){
        System.out.println("我要返回首页");
       return "redirect:/index.jsp";
    }

    @RequestMapping("/blank")
    public String returnBlank(Model model){
        model.addAttribute("message","空白页");
        System.out.println("空白页");
        return "/blank";
    }

    @RequestMapping("/buttons")
    public String returnButton(Model model){
        model.addAttribute("message","按钮");
        System.out.println("按钮");
        return "/buttons";
    }

    @RequestMapping("/calendar")
    public String returnCalendar(Model model){
        model.addAttribute("message","日历");
        System.out.println("输出日历");
        return "/calender";
    }

    @RequestMapping("/compose")
    public String returnCompose(Model model){
        model.addAttribute("message","收发信箱");
        System.out.print("收发信箱");
        return "/compose";
    }

    @RequestMapping("/editor")
    public String returnEditor(Model model){
        model.addAttribute("message","编辑");
        System.out.println("编辑");
        return "/editor";
    }

    @RequestMapping("/forms")
    public String returnForms(Model model){
        model.addAttribute("message","表格");
        System.out.println("输出表格");
        return "/forms";
    }

    @RequestMapping("/grids")
    public String returnGrids(Model model){
        model.addAttribute("message","网格");
        System.out.println("网格");
        return "/grids";
    }

    @RequestMapping("/graph")
    public String returnGraph(Model model){
        model.addAttribute("message","图形可视化");
        System.out.println("图形可视化");
        return "/graph";
    }

    @RequestMapping("/inbox")
    public String returnInbox(Model model){
        model.addAttribute("message","收信信箱");
        System.out.print("收信信箱");
        return "/inbox";
    }

    @RequestMapping("/map")
    public String returnMap(Model model){
        model.addAttribute("message","地图");
        System.out.println("地图");
        return "/map";
    }

    @RequestMapping("/media")
    public String returnMedia(Model model){
        model.addAttribute("message","媒体对象");
        System.out.println("媒体对象");
        return "/media";
    }

    @RequestMapping("/profile")
    public String returnProfile(Model model){
        model.addAttribute("message","Profile");
        System.out.println("Profile");
        return "/profile";
    }

    @RequestMapping("/ribbon")
    public String returnRibbon(Model model){
        model.addAttribute("message","条带");
        System.out.println("条带");
        return "/ribbon";
    }

    @RequestMapping("/table")
    public String returnTable(Model model){
        model.addAttribute("message","表格");
        System.out.println("表格");
        return "/table";
    }

    @RequestMapping("/tabs")
    public String returnTabs(Model model){
        model.addAttribute("message","我要表格");
        System.out.print("输出");
        return "/tabs";
    }

    @RequestMapping("/typography")
    public String returnRegister(Model model){
        model.addAttribute("message","我要注册");
        System.out.println("输出");
        return "/typography";
    }

    @RequestMapping("/validation")
    public String returnValidation(Model model){
        model.addAttribute("message","表单验证");
        System.out.println("表单验证");
        return "/validation";
    }

    @RequestMapping("/widget")
    public String returnWidget(Model model){
        model.addAttribute("message","我要小部件");
        System.out.println("输出");
        return "/widget";
    }

    @RequestMapping("/404")
    public String return404(Model model){
        model.addAttribute("message","错误");
        System.out.println("错误");
        return "/404";
    }

    @RequestMapping("/500")
    public String return500(Model model){
        model.addAttribute("message","服务器内部错误");
        System.out.println("服务器内部错误");
        return "/500";
    }

}

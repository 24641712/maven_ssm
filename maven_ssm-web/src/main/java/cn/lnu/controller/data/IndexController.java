package cn.lnu.controller.data;

import cn.lnu.entity.data.TableData;
import cn.lnu.entity.page.PageBean;
import cn.lnu.service.data.IndexService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author ChengChuangLiang
 * @date 2018/7/21
 */
@Controller
@RequestMapping("/index")
public class IndexController {

    @Resource
     public IndexService indexService;

    @RequestMapping("index")
    public String returnIndex(){

       return "redirect:/index.jsp";
    }

    @RequestMapping("/blank")
    public String returnBlank(Model model){

        return "/blank";
    }

    @RequestMapping("/buttons")
    public String returnButton(Model model){

        return "/buttons";
    }

    @RequestMapping("/calendar")
    public String returnCalendar(Model model){

        return "/calender";
    }

    @RequestMapping("/compose")
    public String returnCompose(Model model){

        return "/compose";
    }

    @RequestMapping("/editor")
    public String returnEditor(Model model){

        return "/editor";
    }

    @RequestMapping("/forms")
    public String returnForms(Model model){

        return "/forms";
    }

    @RequestMapping("/grids")
    public String returnGrids(Model model){

        return "/grids";
    }

    @RequestMapping("/graph")
    public String returnGraph(Model model){

        return "/graph";
    }

    @RequestMapping("/inbox")
    public String returnInbox(Model model){

        return "/inbox";
    }

    @RequestMapping("/map")
    public String returnMap(Model model){

        return "/map";
    }

    @RequestMapping("/media")
    public String returnMedia(Model model){

        return "/media";
    }

    @RequestMapping("/profile")
    public String returnProfile(Model model){

        return "/profile";
    }

    @RequestMapping("/ribbon")
    public String returnRibbon(Model model){

        return "/ribbon";
    }

    @RequestMapping("/table")
    public ModelAndView returnTable(@RequestParam(value="currentPage",defaultValue="1",required = false)
                                                int currentPage){

        //调用业务层查找数据
        List<TableData> list = null;
        PageBean<TableData> pageBean = null;

        ModelAndView modelAndView = new ModelAndView();

        pageBean = indexService.findByPage(currentPage);
        //将数据放到request中
        modelAndView.addObject("TableDataList",pageBean.getLists());


        modelAndView.addObject("pagemsg",pageBean);

        //指定视图
        modelAndView.setViewName("/table");

        System.out.println("表格");

        return modelAndView;
    }

    @RequestMapping("/tabs")
    public String returnTabs(Model model){

        return "/tabs";

    }

    @RequestMapping("/typography")
    public String returnRegister(Model model){

        return "/typography";
    }

    @RequestMapping("/validation")
    public String returnValidation(Model model){

        return "/validation";
    }

    @RequestMapping("/widget")
    public String returnWidget(Model model){

        return "/widget";
    }

    @RequestMapping("/404")
    public String return404(Model model){

        return "/404";
    }

    @RequestMapping("/500")
    public String return500(Model model){

        return "/500";
    }

}

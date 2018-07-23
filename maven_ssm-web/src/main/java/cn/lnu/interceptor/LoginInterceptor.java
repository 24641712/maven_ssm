package cn.lnu.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class LoginInterceptor extends HandlerInterceptorAdapter {
   private List<String> excludeUrls;

    public void setExcludeUrls(List<String> excludeUrls) {
        this.excludeUrls = excludeUrls;
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object handler) throws Exception {
        String requestUri = request.getRequestURI();
        for(String url : excludeUrls){
            if(requestUri.endsWith(url)){
                return  true;
            }
        }
        HttpSession session = request.getSession();
        if(session.getAttribute("username") == null){
            System.out.println("用户状态：0");
            throw new WebAuthException();
        }else {
            System.out.println("用户状态：1");
            return true;
        }
    }
}

 package com.farm.controller;

import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.farm.model.User;
import com.farm.service.UserService;

@Controller
@RequestMapping("/")
public class LoginController {
    
    @Autowired
    private UserService userService;
    
    //用户直接访问登录页面
    @RequestMapping("tologin")
    public String toLogin(){
        return "login";
    }
    
    //用户登录验证
    @RequestMapping("login")
    public String login(User user, HttpSession session,HttpServletRequest req) throws ParseException{
       //调用UserService进行比对，返回User对象
       User u = userService.login(user);
       //判断是否为null，为null，回到登陆页面，不为null，将用户信息保存到session中，跳转到index.jsp页面
       if (u != null && u.getId() > 0) {
            session.setAttribute("User", u);
            return "redirect:main.do";          
        }       
        return "login";
    }

    //用户注销
    @RequestMapping("logout")
    public String logout( HttpSession session,HttpServletRequest req) throws ParseException{
        session.removeAttribute("User");
        return "login";
    }
    
    //跳转到后台管理主页面
    @RequestMapping("main")
    public String main(HttpSession session){
        User user = (User)session.getAttribute("User");
        if(user != null && user.getId() > 0) {
            return "main";
        }
        return "login";
    }
}

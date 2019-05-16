package com.farm.controller;

import com.farm.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("admin")
public class AdminController {


    @RequestMapping("/showLoginName")
    @ResponseBody
    public User getLoginUser(HttpSession session){
        Object user = session.getAttribute("User");
        return (User) user;
    }
}

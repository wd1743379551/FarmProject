 package com.farm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.farm.model.User;
import com.farm.query.BaseQuery;
import com.farm.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @RequestMapping("toUserInfo")
    public String toUserInfo(HttpServletRequest request) {
        List<User> userList = userService.queryList(new BaseQuery());
        request.setAttribute("userList", userList);
        return "userInfo";
    }
    
    //查询
    @RequestMapping("queryUser")
    @ResponseBody
    public User queryUser(User user) {
        User u = userService.getById(user.getId());
        return u;
    }
    
  //插入
    @RequestMapping("addUser")
    public String addUser(User user,HttpServletRequest request) {
        userService.add(user);
        List<User> userList = userService.queryList(new BaseQuery());
        request.setAttribute("userList", userList);
        return "userInfo";
    }
    
    //编辑
    @RequestMapping("editUser")
    public String editUser(User user,HttpServletRequest request) {
        userService.edit(user);
        List<User> userList = userService.queryList(new BaseQuery());
        request.setAttribute("userList", userList);
        return "userInfo";
    }
    
    //删除
    @RequestMapping("deleteUser")
    @ResponseBody
    public Map<String,Boolean> deleteUser(User user,HttpServletRequest request) {
        Map<String,Boolean> map = new HashMap<String,Boolean>();
        int result = userService.delete(user.getId());
        if(result > 0) {
            map.put("flag", true);
        }else {
            map.put("flag", false);
        }
        return map;
    }
}

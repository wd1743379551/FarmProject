package com.farm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("home")
public class HomeController {

    @RequestMapping("test")
    @ResponseBody
    public String test(){

        return "success";
    }

}

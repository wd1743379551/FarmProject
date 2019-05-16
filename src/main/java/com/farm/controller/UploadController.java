package com.farm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("upload")
public class UploadController {

    @RequestMapping("uploadFile")
    @ResponseBody
    public Map uploadFile(MultipartFile file, HttpServletRequest request){
        String fileName = new Date().getTime() + file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."));
        String path = request.getSession().getServletContext().getRealPath("upload");
        System.out.println(path);
        try {
            file.transferTo(new File(path+"\\" + fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String accessPath = "http://localhost:"+request.getServerPort()+request.getContextPath()+"/"+"upload"+"/"+fileName;
        System.out.println(accessPath);
        Map map = new HashMap();
        map.put("flag",true);
        map.put("message",accessPath);
        return map;
    }

}

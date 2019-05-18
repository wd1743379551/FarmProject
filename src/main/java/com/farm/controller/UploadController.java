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

/**
 * 文件上传
 */
@Controller
@RequestMapping("upload")
public class UploadController {

    @RequestMapping("uploadFile")
    @ResponseBody
    public Map uploadFile(MultipartFile file, HttpServletRequest request){
        // 获取文件名   后面事获取文件格式 时间+命名
        String fileName = new Date().getTime() + file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."));
        // 获取文件上传的路径
        String path = request.getSession().getServletContext().getRealPath("upload");
        System.out.println(path);
        try {
            // 文件传到upload目录下
            file.transferTo(new File(path+"\\" + fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        //  生成文件的访问路径
        String accessPath = "http://localhost:"+request.getServerPort()+request.getContextPath()+"/"+"upload"+"/"+fileName;
        System.out.println(accessPath);
        Map map = new HashMap();
        map.put("flag",true);
        map.put("message",accessPath);
        return map;
    }

}

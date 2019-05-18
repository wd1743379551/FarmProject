 package com.farm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.farm.model.Category;
import com.farm.model.Classify;
import com.farm.model.News;
import com.farm.query.BaseQuery;
import com.farm.service.CategoryService;
import com.farm.service.ClassifyService;
import com.farm.service.NewsService;

@Controller
@RequestMapping("/farm")
public class FarmController {
    
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ClassifyService classifyService;
    @Autowired
    private NewsService newService;
    
    //跳转到farm主页面
    @RequestMapping("/toFarmMain")
    public String toFarmMain(Category category,HttpServletRequest request) {
        List<Classify> clsNews = new ArrayList<Classify>();
        List<Classify> clsList = new ArrayList<Classify>();
        //查询对应category下的classify
        if(category.getId() != null) {
            Category ctg = categoryService.getById(category.getId());
            clsList = classifyService.getBycategoryId(ctg.getId());
        }else {
            //默认查询首页下的classify
            Category ctg = categoryService.getByName("首页");
            clsList = classifyService.getBycategoryId(ctg.getId());
        }
        for (Classify classify : clsList) {
            Classify cf = classifyService.getNewsById(classify);
            if(cf != null) {
                clsNews.add(cf);
            }           
        }
        for (Classify classify : clsNews) {
                request.setAttribute(classify.getTreecode(), classify);
            }

        request.setAttribute("categoryList", categoryService.queryList(new BaseQuery()));
        return "farm_main";
    }
    
    //跳转到新闻列表页面
    @RequestMapping("/toFarmPage")
    public String toFarmPage(Classify classify,HttpServletRequest request,@RequestParam(value="searchword",required =false ) String searchword) {
        List<News> newsList = new ArrayList<News>();
        //searchword全文检索新闻标题
        if(StringUtils.isNotBlank(searchword)) {
            newsList = newService.getByTitle(searchword);  
        }else {
            Classify cs = classifyService.getByTreeCode(classify.getTreecode());
            request.setAttribute("name", cs.getName());
            newsList = newService.getByClassifyId(cs.getId());
        }    
        request.setAttribute("newsList", newsList);
        request.setAttribute("categoryList", categoryService.queryList(new BaseQuery()));
        return "farm_page";
    }
    
    //跳转到新闻具体显示页面
    @RequestMapping("toContentPage")
    public String toContentPage(News news,HttpServletRequest request) {    
        News n = newService.getById(news.getId());
        request.setAttribute("n", n);
        request.setAttribute("categoryList", categoryService.queryList(new BaseQuery()));
        return "farm_content";
    }
    
    
    
}

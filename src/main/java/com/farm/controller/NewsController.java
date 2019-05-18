package com.farm.controller;

import com.farm.model.Category;
import com.farm.model.Classify;
import com.farm.model.PageResult;
import com.farm.model.Result;
import com.farm.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.farm.model.News;
import com.farm.service.NewsService;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * service
 * 
 * @Date: 2019年05月14日 21:10:05 
 * @author 
 * @version  	 
 */
@RestController
@RequestMapping("content")
public class NewsController {
	
	@Autowired
	private NewsService NewsService;

	/**
	 * 进入列表页
	 *
	 * @author
	 * @param query
	 * @return
	 */
	@RequestMapping("findAll")
	public List<News> index() {
		return NewsService.findAll();
	}
	
	/**
     * 返回全部列表
     * @return
     */
    @RequestMapping("/findPage")
    public PageResult findPage(int page, int rows,Classify classify){
        return NewsService.findPage(page, rows);
    }

	/**
	 * 查询一个
	 *
	 * @author
	 * @return
	 */
	@RequestMapping(value="findOne", method=RequestMethod.GET)
	public News findOne(Integer id) {
		News news = NewsService.findOne(id);
		return news;
	}


	/**
	 * 新增
	 *
	 * @author
	 * @param Category
	 * @return
	 */
	@RequestMapping(value="add", method=RequestMethod.POST)
	public Result add(@RequestBody News news) {
		try {
			NewsService.add(news);
			return new Result(true, "增加成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "增加失败");
		}
	}

	/**
	 * 编辑
	 *
	 * @author
	 * @param Category
	 * @return
	 */
	@RequestMapping(value="update", method=RequestMethod.POST)
	public Result update(@RequestBody News news) {
		try {
			NewsService.update(news);
			return new Result(true, "修改成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "修改失败");
		}
	}

	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	@RequestMapping("/delete")
	public Result delete(Integer [] ids){
		try {
			NewsService.deleteByIds(ids);
			return new Result(true, "删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "删除失败");
		}
	}

	/**
	 * 查询+分页
	 * @param brand
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping("/search")
	public PageResult search(@RequestBody News news, int page, int rows  ){
		return NewsService.findPage(news, page, rows);
	}
}

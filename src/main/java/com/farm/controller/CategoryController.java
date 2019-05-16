package com.farm.controller;

import com.farm.model.Category;
import com.farm.model.PageResult;
import com.farm.model.Result;
import com.farm.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * service
 * 
 * @Date: 2019年05月13日 23:49:04 
 * @author 
 * @version  	 
 */
@RestController
@RequestMapping("contentCategory")
public class CategoryController {
	
	@Autowired
	private CategoryService CategoryService;
	
	/**
	 * 进入列表页
	 *
	 * @author 
	 * @param query
	 * @return
	 */
	@RequestMapping("findAll")
	public List<Category> index() {
		return CategoryService.findAll();
	}

	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findPage")
	public PageResult findPage(int page, int rows){
		return CategoryService.findPage(page, rows);
	}


	/**
	 * 查询一个
	 *
	 * @author
	 * @return
	 */
	@RequestMapping(value="findOne", method=RequestMethod.GET)
	public Category findOne(Integer id) {
		Category category = CategoryService.findOne(id);
		return category;
	}

	/**
	 * 进入新增页面
	 *
	 * @author 
	 * @return
	 */
	@RequestMapping(value="add", method=RequestMethod.GET)
	public String add() {
		return "";
	}
	
	/**
	 * 新增
	 *
	 * @author 
	 * @param Category
	 * @return
	 */
	@RequestMapping(value="add", method=RequestMethod.POST)
	public Result add(@RequestBody Category category) {
		try {
			CategoryService.add(category);
			return new Result(true, "增加成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "增加失败");
		}
	}
	
	/**
	 * 进入编辑页面
	 *
	 * @author 
	 * @param compId
	 * @return
	 */
	@RequestMapping(value="edit", method=RequestMethod.GET)
	public String edit(Integer id, Model model) {
		model.addAttribute("Category", CategoryService.getById(id));
		return "";
	}
	
	/**
	 * 编辑
	 *
	 * @author 
	 * @param Category
	 * @return
	 */
	@RequestMapping(value="update", method=RequestMethod.POST)
	public Result update(@RequestBody Category Category) {
		try {
			CategoryService.update(Category);
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
			CategoryService.deleteByIds(ids);
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
	public PageResult search(@RequestBody Category contentCategory, int page, int rows  ){
		return CategoryService.findPage(contentCategory, page, rows);
	}
}

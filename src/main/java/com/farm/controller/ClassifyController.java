package com.farm.controller;

import com.farm.model.PageResult;
import com.farm.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import com.farm.model.Classify;
import com.farm.service.ClassifyService;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 二级分类表service
 * 
 * @Date: 2019年05月14日 21:08:49 
 * @author 
 * @version  	 
 */
@RestController
@RequestMapping("classify")
public class ClassifyController {
	
	@Autowired
	private ClassifyService ClassifyService;
	
	/**
	 * 进入列表页
	 *
	 * @author 
	 * @param
	 * @return
	 */
	@RequestMapping("findAll")
	public List<Classify> index() {
		return ClassifyService.findALl();
	}

	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findPage")
	public PageResult findPage(int page, int rows){
		return ClassifyService.findPage(page, rows);
	}


	/**
	 * 查询一个
	 *
	 * @author
	 * @return
	 */
	@RequestMapping(value="findOne", method=RequestMethod.GET)
	public Classify findOne(Integer id) {
		Classify classify = ClassifyService.findOne(id);
		return classify;
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
	public Result add(@RequestBody Classify classify) {
		try {
			ClassifyService.add(classify);
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
	public Result update(@RequestBody Classify classify) {
		try {
			ClassifyService.update(classify);
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
			ClassifyService.deleteByIds(ids);
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
	public PageResult search(@RequestBody Classify classify, int page, int rows  ){
		return ClassifyService.findPage(classify, page, rows);
	}
}

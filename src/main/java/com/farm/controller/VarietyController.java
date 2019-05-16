package com.farm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.farm.model.Variety;
import com.farm.service.VarietyService;

/**
 * service
 * 
 * @Date: 2019年05月14日 21:11:11 
 * @author 
 * @version  	 
 */
@Controller
@RequestMapping("variety")
public class VarietyController {
	
	@Autowired
	private VarietyService VarietyService;
	
	/**
	 * 进入列表页
	 *
	 * @author 
	 * @param query
	 * @return
	 */
	@RequestMapping("list")
	public String index() {
		return "";
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
	 * @param Variety
	 * @return
	 */
	@RequestMapping(value="add", method=RequestMethod.POST)
	public String add(Variety Variety) {
		return "";
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
		model.addAttribute("Variety", VarietyService.getById(id));
		return "";
	}
	
	/**
	 * 编辑
	 *
	 * @author 
	 * @param Variety
	 * @return
	 */
	@RequestMapping(value="edit", method=RequestMethod.POST)
	public String edit(Variety Variety) {
		return null;
	}
}

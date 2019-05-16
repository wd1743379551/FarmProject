package com.farm.controller;

import com.farm.model.News;
import com.farm.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.farm.model.Subject;
import com.farm.service.SubjectService;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * service
 * 
 * @Date: 2019年05月14日 21:10:33 
 * @author 
 * @version  	 
 */
@RestController
@RequestMapping("subject")
public class SubjectController {
	
	@Autowired
	private SubjectService SubjectService;

	/**
	 * 进入列表页
	 *
	 * @author
	 * @param query
	 * @return
	 */
	@RequestMapping("findAll")
	public List<Subject> index() {
		return SubjectService.findAll();
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
	 * @param Subject
	 * @return
	 */
	@RequestMapping(value="add", method=RequestMethod.POST)
	public String add(Subject Subject) {
		return "";
	}
	
	/**
	 * 进入编辑页面
	 *
	 * @author 
	 * @param
	 * @return
	 */
	@RequestMapping(value="edit", method=RequestMethod.GET)
	public String edit(Integer id, Model model) {
		model.addAttribute("Subject", SubjectService.getById(id));
		return "";
	}
	
	/**
	 * 编辑
	 *
	 * @author 
	 * @param Subject
	 * @return
	 */
	@RequestMapping(value="edit", method=RequestMethod.POST)
	public String edit(Subject Subject) {
		return null;
	}
}

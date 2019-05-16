package com.farm.model;

import java.io.Serializable;
import java.util.List;

/**
 * 二级分类表
 * 
 * @Date: 2019年05月14日 21:08:49 
 * @author 
 */
public class Classify implements Serializable {
	
	private static final long serialVersionUID = -1L;
	
	/**
	 * 
	 */
	private Integer id;
	
	/**
	 * 
	 */
	private String name;
	
	/**
	 * 
	 */
	private String treecode;
	
	/**
	 * 分类id
	 */
	private Integer categoryId;
	
	/**
	 * 新闻list
	 */
	private List<News> newsList;
	
	
	public void setId (Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}
	public void setName (String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}
	public void setTreecode (String treecode) {
		this.treecode = treecode;
	}

	public String getTreecode() {
		return treecode;
	}
	public void setCategoryId (Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

    public List<News> getNewsList() {
        return newsList;
    }

    public void setNewsList(List<News> newsList) {
        this.newsList = newsList;
    }
	
}

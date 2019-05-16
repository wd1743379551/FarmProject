package com.farm.model;

import java.io.Serializable;

/**
 * 
 * 
 * @Date: 2019年05月13日 23:49:04 
 * @author 
 */
public class Category implements Serializable {
	
	private static final long serialVersionUID = -1L;
	
	/**
	 * 标题分类ID
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
}

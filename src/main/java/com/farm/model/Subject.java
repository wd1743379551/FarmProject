package com.farm.model;

import java.io.Serializable;

/**
 * 
 * 
 * @Date: 2019年05月14日 21:10:33 
 * @author 
 */
public class Subject implements Serializable {
	
	private static final long serialVersionUID = -1L;
	
	/**
	 * 专题ID
	 */
	private Integer id;
	
	/**
	 * 专题名称
	 */
	private String name;
	
	/**
	 * 跳转链接
	 */
	private String url;
	
	/**
	 * 是否展示,0==不展示  1==展示
	 */
	private int status;
	
	
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
	public void setUrl (String url) {
		this.url = url;
	}

	public String getUrl() {
		return url;
	}
	public void setStatus (int status) {
		this.status = status;
	}

	public int getStatus() {
		return status;
	}
}

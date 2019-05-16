package com.farm.model;

import java.io.Serializable;

/**
 * 
 * 
 * @Date: 2019年05月14日 21:11:11 
 * @author 
 */
public class Variety implements Serializable {
	
	private static final long serialVersionUID = -1L;
	
	/**
	 * 品种ID
	 */
	private Integer id;
	
	/**
	 * 
	 */
	private String name;
	
	/**
	 * 跳转url
	 */
	private String url;
	
	/**
	 * 是否显示 0==不显示 ，1==显示
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

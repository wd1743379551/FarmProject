package com.farm.model;

import java.io.Serializable;

/**
 * 
 * 
 * @Date: 2019年05月14日 21:10:48 
 * @author 
 */
public class User implements Serializable {
	
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
	private String pwd;
	
	/**
	 * 手机号
	 */
	private String phone;
	
	/**
	 * 用户类型  0==普通用户  1==管理员
	 */
	private int type;
	
	
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
	public void setPwd (String pwd) {
		this.pwd = pwd;
	}

	public String getPwd() {
		return pwd;
	}
	public void setPhone (String phone) {
		this.phone = phone;
	}

	public String getPhone() {
		return phone;
	}
	public void setType (int type) {
		this.type = type;
	}

	public int getType() {
		return type;
	}
}

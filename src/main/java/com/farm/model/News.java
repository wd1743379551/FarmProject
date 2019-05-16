package com.farm.model;

import java.io.Serializable;

/**
 * 
 * 
 * @Date: 2019年05月14日 21:10:05 
 * @author 
 */
public class News implements Serializable {
	
	private static final long serialVersionUID = -1L;
	
	/**
	 * 新闻ID
	 */
	private Integer id;
	
	/**
	 * 
	 */
	private String title;
	
	/**
	 * 
	 */
	private String content;
	
	/**
	 * 
	 */
	private String classify;
	
	/**
	 * 
	 */
	private String province;
	
	/**
	 * 
	 */
	private Integer subject;
	
	/**
	 * 
	 */
	private String category;
	
	/**
	 * 二级分类id
	 */
	private Integer classifyId;
	
	/**
	 * 一级分类id
	 */
	private Integer categoryId;
	
	/**
	 * 链接地址
	 */
	private String url;
	
	/**
	 * 图片地址
	 */
	private String pic;
	
	/**
	 * 0==不显示  1==显示
	 */
	private int status;
	
	/**
	 * 排序字段
	 */
	private Integer sort;
	
	private String subjectName;

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public void setId (Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}
	public void setTitle (String title) {
		this.title = title;
	}

	public String getTitle() {
		return title;
	}
	public void setContent (String content) {
		this.content = content;
	}

	public String getContent() {
		return content;
	}
	public void setClassify (String classify) {
		this.classify = classify;
	}

	public String getClassify() {
		return classify;
	}
	public void setProvince (String province) {
		this.province = province;
	}

	public String getProvince() {
		return province;
	}
	public void setSubject (Integer subject) {
		this.subject = subject;
	}

	public Integer getSubject() {
		return subject;
	}
	public void setCategory (String category) {
		this.category = category;
	}

	public String getCategory() {
		return category;
	}
	public void setClassifyId (Integer classifyId) {
		this.classifyId = classifyId;
	}

	public Integer getClassifyId() {
		return classifyId;
	}
	public void setCategoryId (Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getCategoryId() {
		return categoryId;
	}
	public void setUrl (String url) {
		this.url = url;
	}

	public String getUrl() {
		return url;
	}
	public void setPic (String pic) {
		this.pic = pic;
	}

	public String getPic() {
		return pic;
	}
	public void setStatus (int status) {
		this.status = status;
	}

	public int getStatus() {
		return status;
	}
	public void setSort (Integer sort) {
		this.sort = sort;
	}

	public Integer getSort() {
		return sort;
	}
}

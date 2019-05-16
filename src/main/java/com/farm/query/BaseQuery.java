package com.farm.query;

import java.io.Serializable;

/**
 * 基础查询query
 *
 *
 */
public class BaseQuery implements Serializable {

    private static final long serialVersionUID = -1L;

    /**
     * 默认显示数量为10条
     */
    public static final int DEFAULT_PAGE_SIZE = 10;

    /**
     * 默认页数为第一页
     */
    public static final int DEFAULT_PAGE_NUMBER = 1;

    /**
     * 每页显示的数量
     */
    private int pageSize;

    /**
     * 当前页
     */
    private int pageNumber;

    /**
     * 开始数据条数
     */
    private int startNumber;

    /**
     * 排序字段
     */
    private String sortName;

    /**
     * 排序方式 desc or asc
     */
    private String sortOrder;

    public int getPageSize() {
        return (pageSize < 1 ? DEFAULT_PAGE_SIZE : pageSize);
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize < 1 ? DEFAULT_PAGE_SIZE : pageSize;
    }

    public int getPageNumber() {
        return (pageNumber < 1 ? DEFAULT_PAGE_NUMBER : pageNumber);
    }

    public void setPageNumber(Integer pageNumber) {
        if (pageNumber == null) {
            pageNumber = 1;
        }
        this.pageNumber = pageNumber < 1 ? DEFAULT_PAGE_NUMBER : pageNumber;
    }

    public String getSortName() {
        return sortName;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }

    public String getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(String sortOrder) {
        this.sortOrder = sortOrder;
    }

    public int getStartNumber() {
        return this.pageNumber * this.pageSize;
    }

    public void setStartNumber(int startNumber) {
        this.startNumber = startNumber;
    }
}

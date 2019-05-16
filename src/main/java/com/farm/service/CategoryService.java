package com.farm.service;


import com.farm.model.Category;
import com.farm.model.PageResult;

import java.util.List;

/**
 * service
 * 
 * @Date: 2019年05月13日 23:49:04 
 * @author 
 */
public interface CategoryService extends BaseService<Category> {
    
    /**
     * 通过name获取Category
     * @param id
     * @return
     */
    public Category getByName(String name);
    
    /**
     * 返回全部列表
     * @return
     */
    public List<Category> findAll();


    /**
     * 返回分页列表
     * @return
     */
    public PageResult findPage(int pageNum,int pageSize);


    /**
     * 增加
     */
    public void add(Category contentCategory);


    /**
     * 修改
     */
    public void update(Category contentCategory);


    /**
     * 根据ID获取实体
     * @param id
     * @return
     */
    public Category findOne(Integer id);


    /**
     * 批量删除
     * @param ids
     */
    public void deleteByIds(Integer [] ids);

    /**
     * 分页
     * @param pageNum 当前页 码
     * @param pageSize 每页记录数
     * @return
     */
    public PageResult findPage(Category contentCategory, int pageNum,int pageSize);
}


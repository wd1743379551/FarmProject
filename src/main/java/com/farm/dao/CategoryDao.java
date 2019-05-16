package com.farm.dao;

import com.farm.model.Category;

import java.util.List;

/**
 * dao
 * 
 * @Date: 2019年05月13日 23:49:04 
 * @author 
 */
public interface CategoryDao extends BaseDao<Category> {

    List<Category> queryAllList();

    List<Category> selectByEntity(Category contentCategory);
    
    Category getByName(String name);
}


package com.farm.service.impl;

import com.farm.dao.CategoryDao;
import com.farm.model.Category;
import com.farm.model.PageResult;
import com.farm.service.CategoryService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("CategoryService")
public class CategoryServiceImpl extends BaseServiceImpl<Category, CategoryDao> implements CategoryService {

    /**
     * 查询全部
     */
    @Override
    public List<Category> findAll() {
        return dao.queryAllList();
    }

    /**
     * 按分页查询
     */
    @Override
    public PageResult findPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        Page<Category> page=   (Page<Category>) dao.queryAllList();
        return new PageResult(page.getTotal(), page.getResult());
    }

    /**
     * 增加
     */
    @Override
    public void add(Category contentCategory) {
        dao.add(contentCategory);
    }


    /**
     * 修改
     */
    @Override
    public void update(Category contentCategory){
        dao.edit(contentCategory);
    }

    /**
     * 根据ID获取实体
     * @param id
     * @return
     */
    @Override
    public Category findOne(Integer id){
        return dao.getById(id);
    }

    /**
     * 批量删除
     */
    @Override
    public void deleteByIds(Integer[] ids) {
        for(Integer id:ids){
            dao.deleteById(id);
        }
    }


    @Override
    public PageResult findPage(Category contentCategory, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Category> list = dao.selectByEntity(contentCategory);
        PageInfo<Category> page = new PageInfo<Category>(list);
        return new PageResult(page.getTotal(), page.getList());
    }

    @Override
    public Category getByName(String name) {
        return dao.getByName(name);
    }
}


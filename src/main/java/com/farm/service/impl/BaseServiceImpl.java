package com.farm.service.impl;

import com.farm.dao.BaseDao;
import com.farm.query.BaseQuery;
import com.farm.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class BaseServiceImpl<T, D extends BaseDao<T>>  implements BaseService<T> {

    @Autowired
    protected D dao;


    @Override
    public void add(T entity) {
        dao.add(entity);
    }

    @Override
    public Integer delete(Object id) {
        return dao.deleteById(id);
    }

    @Override
    public void edit(T entity) {
        dao.edit(entity);
    }

    @Override
    public T getById(Object id) {
        return dao.getById(id);
    }

    @Override
    public List<T> queryList(BaseQuery query) {
        return dao.queryList(query);
    }
}

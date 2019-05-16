package com.farm.dao;

import com.farm.query.BaseQuery;

import java.util.List;

public interface BaseDao<T> {

    void add (T t);
    void edit(T t);
    Integer deleteById(Object id);
    List<T> queryList(BaseQuery query);
    T getById(Object id);
}

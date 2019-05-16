package com.farm.service;

import com.farm.query.BaseQuery;

import java.util.List;

/**
 * 基础service
 * 提供一些常用的基础操作
 *
 * @param <T>
 * @author
 */
public interface BaseService<T> {

    /**
     * 新增
     *
     * @param entity
     * @author
     */
    void add(T entity);

    /**
     * 删除
     *
     * @param id
     * @author
     */
    Integer delete(Object id);


    /**
     * 编辑
     *
     * @param entity
     * @author
     */
    void edit(T entity);

    /**
     * 根据id获取指定数据信息
     *
     * @param id
     * @return
     * @author
     */
    T getById(Object id);

    /**
     * 根据条件获取数据信息
     *
     * @param query
     * @return
     * @author
     */
    List<T> queryList(BaseQuery query);

}

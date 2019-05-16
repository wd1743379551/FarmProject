package com.farm.service;

import java.util.List;

import com.farm.model.News;
import com.farm.model.PageResult;

/**
 * service
 * 
 * @Date: 2019年05月14日 21:10:05 
 * @author 
 */
public interface NewsService extends BaseService<News> {
	
    public List<News> getByClassifyId(Object id);

    List<News> findAll();

    PageResult findPage(int page, int rows);

    News findOne(Integer id);

    void update(News news);

    void deleteByIds(Integer[] ids);

    PageResult findPage(News news, int page, int rows);

    List<News> getByTitle(String title);
}


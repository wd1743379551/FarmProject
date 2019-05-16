package com.farm.dao;

import java.util.List;

import com.farm.model.News;

/**
 * dao
 * 
 * @Date: 2019年05月14日 21:10:05 
 * @author 
 */
public interface NewsDao extends BaseDao<News> {



    List<News> findAllNews();

    News findOne(Integer id);

    List<News> selectByEntity(News news);
	List<News> getByClassifyId(Object id);

	List<News> getByTitle(String title);
}


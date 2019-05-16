package com.farm.service.impl;

import com.farm.dao.NewsDao;
import com.farm.model.Category;
import com.farm.model.News;

import java.util.List;

import com.farm.model.PageResult;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import com.farm.service.NewsService;


@Service("NewsService")
public class NewsServiceImpl extends BaseServiceImpl<News, NewsDao> implements NewsService {

    @Override
    public List<News> getByClassifyId(Object id) {
         return dao.getByClassifyId(id);
    }

    @Override
    public List<News> findAll() {
        return dao.findAllNews();
    }

    @Override
    public PageResult findPage(int page, int rows) {
        return null;
    }

    @Override
    public News findOne(Integer id) {
        return dao.findOne(id);
    }

    @Override
    public void update(News news) {
        dao.edit(news);
    }

    @Override
    public void deleteByIds(Integer[] ids) {
        for(Integer id:ids){
            dao.deleteById(id);
        }
    }

    @Override
    public PageResult findPage(News news, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<News> list = dao.selectByEntity(news);
        PageInfo<News> page = new PageInfo<News>(list);
        return new PageResult(page.getTotal(), page.getList());
    }

    @Override
    public List<News> getByTitle(String title) {
         return dao.getByTitle(title);
    }

}


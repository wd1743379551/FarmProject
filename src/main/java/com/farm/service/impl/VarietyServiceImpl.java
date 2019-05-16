package com.farm.service.impl;

import com.farm.dao.VarietyDao;
import com.farm.model.Category;
import com.farm.model.PageResult;
import com.farm.model.Variety;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import com.farm.service.VarietyService;

import java.util.List;


@Service("VarietyService")
public class VarietyServiceImpl extends BaseServiceImpl<Variety, VarietyDao> implements VarietyService {
    @Override
    public List<Variety> findAll() {
        return dao.queryAllList();
    }

    @Override
    public PageResult findPage(int page, int rows) {
        PageHelper.startPage(page,rows);
        PageInfo<Variety> pageInfo = new PageInfo<>(findAll());
        return new PageResult(pageInfo.getTotal(),pageInfo.getList());
    }

    @Override
    public Variety findOne(Integer id) {
        return dao.getById(id);
    }

    @Override
    public void update(Variety variety) {
        dao.edit(variety);
    }

    @Override
    public void deleteByIds(Integer[] ids) {
        for (Integer id : ids) {
            dao.deleteById(id);
        }
    }

    @Override
    public PageResult findPage(Variety variety, int page, int rows) {
        PageHelper.startPage(page, rows);
        List<Variety> list = dao.selectByEntity(variety);
        PageInfo<Variety> pageInfo = new PageInfo<Variety>(list);
        return new PageResult(pageInfo.getTotal(), pageInfo.getList());
    }
}


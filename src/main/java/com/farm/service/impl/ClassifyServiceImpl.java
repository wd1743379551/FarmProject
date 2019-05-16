package com.farm.service.impl;

import com.farm.dao.ClassifyDao;
import com.farm.model.Classify;

import java.util.List;

import com.farm.model.PageResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import com.farm.service.ClassifyService;


@Service("ClassifyService")
public class ClassifyServiceImpl extends BaseServiceImpl<Classify, ClassifyDao> implements ClassifyService {

    //通过categoryId得到classify
    @Override
    public List<Classify> getBycategoryId(Object id) {        
         return dao.getBycategoryId(id);
    }

    /* 
     * 查询出带有
     */
    @Override
    public Classify getNewsById(Classify classify) {      
         return dao.getNewsById(classify);
    }

    @Override
    public Classify getByTreeCode(String treeCode) {
         return dao.getByTreeCode(treeCode);
    }

    @Override
    public List<Classify> findALl() {
        return dao.findALl();
    }


    @Override
    public PageResult findPage(int page, int rows) {
        return null;
    }

    @Override
    public Classify findOne(Integer id) {
        return dao.getById(id);
    }


    @Override
    public void update(Classify classify) {
        dao.edit(classify);
    }

    @Override
    public void deleteByIds(Integer[] ids) {
        for(Integer id:ids){
            dao.deleteById(id);
        }
    }

    @Override
    public PageResult findPage(Classify classify, int page, int rows) {
        PageHelper.startPage(page, rows);
        List<Classify> list = dao.selectByEntity(classify);
        PageInfo<Classify> pageInfo = new PageInfo<Classify>(list);
        return new PageResult(pageInfo.getTotal(), pageInfo.getList());
    }

    @Override
    public List<Classify> findClassifyByCategory(Integer categoryId) {
        return dao.findClassifyByCategory(categoryId);
    }
}


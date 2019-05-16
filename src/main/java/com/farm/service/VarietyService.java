package com.farm.service;

import com.farm.model.PageResult;
import com.farm.model.Variety;

import java.util.List;

/**
 * service
 * 
 * @Date: 2019年05月14日 21:11:11 
 * @author 
 */
public interface VarietyService extends BaseService<Variety> {

    List<Variety> findAll();

    PageResult findPage(int page, int rows);

    Variety findOne(Integer id);

    void update(Variety variety);

    void deleteByIds(Integer[] ids);

    PageResult findPage(Variety variety, int page, int rows);
}


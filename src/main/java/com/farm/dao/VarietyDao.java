package com.farm.dao;

import com.farm.model.Variety;

import java.util.List;

/**
 * dao
 * 
 * @Date: 2019年05月14日 21:11:11 
 * @author 
 */
public interface VarietyDao extends BaseDao<Variety> {

    List<Variety> queryAllList();

    List<Variety> selectByEntity(Variety variety);
}


package com.farm.dao;

import java.util.List;
import com.farm.model.Classify;

/**
 * 二级分类表dao
 * 
 * @Date: 2019年05月14日 21:08:49 
 * @author 
 */
public interface ClassifyDao extends BaseDao<Classify> {
    
    List<Classify> getBycategoryId(Object id);
    
    Classify getNewsById(Classify classify);
    
    Classify getByTreeCode(String treeCode);

    List<Classify> findALl();

    List<Classify> queryAllList();

    List<Classify> selectByEntity(Classify classify);
}


package com.farm.service;

import java.util.List;

import com.farm.model.Classify;
import com.farm.model.PageResult;

/**
 * 二级分类表service
 * 
 * @Date: 2019年05月14日 21:08:49 
 * @author 
 */
public interface ClassifyService extends BaseService<Classify> {
    
	List<Classify> getBycategoryId(Object id);
	
	Classify getNewsById(Classify classify);
	 
	Classify getByTreeCode(String treeCode);

    List<Classify> findALl();

	PageResult findPage(int page, int rows);

	Classify findOne(Integer id);

	void update(Classify classify);

	void deleteByIds(Integer[] ids);

	PageResult findPage(Classify classify, int page, int rows);
}


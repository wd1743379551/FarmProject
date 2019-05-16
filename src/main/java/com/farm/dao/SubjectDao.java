package com.farm.dao;


import com.farm.model.Subject;

import java.util.List;

/**
 * dao
 * 
 * @Date: 2019年05月14日 21:10:33 
 * @author 
 */
public interface SubjectDao extends BaseDao<Subject> {

    List<Subject> findAll();
}


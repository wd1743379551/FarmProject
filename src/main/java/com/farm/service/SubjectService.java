package com.farm.service;

import com.farm.model.Subject;

import java.util.List;

/**
 * service
 * 
 * @Date: 2019年05月14日 21:10:33 
 * @author 
 */
public interface SubjectService extends BaseService<Subject> {

    List<Subject> findAll();
}


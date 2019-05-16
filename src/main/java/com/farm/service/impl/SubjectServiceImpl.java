package com.farm.service.impl;

import com.farm.dao.SubjectDao;
import com.farm.model.Subject;
import org.springframework.stereotype.Service;

import com.farm.service.SubjectService;

import java.util.List;


@Service("SubjectService")
public class SubjectServiceImpl extends BaseServiceImpl<Subject, SubjectDao> implements SubjectService {

    @Override
    public List<Subject> findAll() {
        return dao.findAll();
    }
}


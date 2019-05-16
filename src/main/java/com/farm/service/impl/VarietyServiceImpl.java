package com.farm.service.impl;

import com.farm.dao.VarietyDao;
import com.farm.model.Variety;
import org.springframework.stereotype.Service;

import com.farm.service.VarietyService;


@Service("VarietyService")
public class VarietyServiceImpl extends BaseServiceImpl<Variety, VarietyDao> implements VarietyService {
	
}


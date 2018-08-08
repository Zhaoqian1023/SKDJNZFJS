package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.DepartmentDao;
import com.po.Department;

@Service("departmentService")
public class DepartmentService {
	@Autowired
	@Qualifier("departmentDaoImpl")
	private DepartmentDao departmentDao;
	
	@Transactional
	public Department getDeptByDname(String dName){
		Department dept = new Department();
		dept = departmentDao.getDepartmentByDname(dName);
		return dept;
	}

}

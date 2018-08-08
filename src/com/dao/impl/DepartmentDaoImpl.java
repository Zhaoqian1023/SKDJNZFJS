package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.dao.DepartmentDao;
import com.po.Department;

@Repository("departmentDaoImpl")
public class DepartmentDaoImpl extends BaseDaoImpl implements DepartmentDao {

	@Override
	public boolean addDepartment(Department dept) {
		return super.add(dept);
	}

	@Override
	public Department addDepartments(Department dept) {
		super.getSession().save(dept);
		return dept;
	}

	@Override
	public boolean updateDeaprtment(Department dept) {
		return super.update(dept);
	}

	@Override
	public Department getDepartmentByDid(int dId) {
		String hql = "from Department where dId = "+dId;
		List<Department> data = new ArrayList<Department>();
		data = super.queryListByHQL(hql);
		if(data.isEmpty()){
			return null;
		}
		return data.get(0);
	}

	@Override
	public Department getDepartmentByDname(String dName) {
		String hql = "from Department where dName = '"+dName+"'";
		List<Department> data = new ArrayList<Department>();
		data = super.queryListByHQL(hql);
		if(data.isEmpty()){
			return null;
		}
		return data.get(0);
	}

	@Override
	public List<Department> getAllDepartment() {
		String hql = "from Department";
		List<Department> data = new ArrayList<Department>();
		data = super.queryListByHQL(hql);
		if(data.isEmpty()){
			return null;
		}
		return data;
	}

}

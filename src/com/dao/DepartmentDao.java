package com.dao;

import java.util.List;

import com.po.Department;

public interface DepartmentDao {
	//新增部门信息
	public boolean addDepartment(Department dept);
	//新增部门信息返回新增部门对象
	public Department addDepartments(Department dept);
	//更新部门信息
	public boolean updateDeaprtment(Department dept);
	//通过部门Id查询部门对象
	public Department getDepartmentByDid(int dId);
	//通过部门名称查询部门对象
	public Department getDepartmentByDname(String dName);
	//获取全部部门信息
	public List<Department> getAllDepartment();
	

}

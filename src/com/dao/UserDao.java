package com.dao;

import java.util.List;

import com.po.User;

public interface UserDao {
	//添加用户
	public boolean addUser(User obj);
	//添加用户返回用户对象
	public User addUsers(User obj);
	//更新用户信息
	public boolean updateUser(User obj);
	//通过用户id查询
	public User getUserByUid(int uId);
	//通过用户名查询用户
	public List<User> getUserByUname(String uName);
	//通过用户角色查询用户
	public List<User> getUserByRole(int role);
	//查询全部用户信息
	public List<User> getAllUser();

}

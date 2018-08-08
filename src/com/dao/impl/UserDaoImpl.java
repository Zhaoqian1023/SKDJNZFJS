package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.dao.UserDao;
import com.po.User;

@Repository("userDaoImpl")
public class UserDaoImpl extends BaseDaoImpl implements UserDao {

	@Override
	public boolean addUser(User obj) {
		
		return super.add(obj);
		
	}

	@Override
	public User addUsers(User obj) {
		super.getSession().save(obj);
		return obj;
	}

	@Override
	public boolean updateUser(User obj) {
		return super.update(obj);
	}

	@Override
	public User getUserByUid(int uId) {
		String hql = "from User where uId ="+uId;
		List<User> data = new ArrayList<User>();
		data = super.queryListByHQL(hql);
		if(data.isEmpty()){
			return null;
		}
		return data.get(0);
	}

	@Override
	public List<User> getUserByUname(String uName) {
		String hql = "from User where uName ='"+uName+"'";
		List<User> data = new ArrayList<User>();
		data = super.queryListByHQL(hql);
		if(data.isEmpty() || data == null){
			return null;
		}
		return data;
	}

	@Override
	public List<User> getUserByRole(int role) {
		String hql = "from User where role="+role;
		List<User> data = new ArrayList<User>();
		data = super.queryListByHQL(hql);
		if(data.isEmpty()){
			return null;
		}
		return data;
	}

	@Override
	public List<User> getAllUser() {
		String hql = "from User";
		List<User> data = new ArrayList<User>();
		data = super.queryListByHQL(hql);
		if(data.isEmpty()){
			return null;
		}
		return data;
	}

}

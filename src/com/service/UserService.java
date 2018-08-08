package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.po.User;

@Service("userService")
public class UserService {
	@Autowired
	@Qualifier("userDaoImpl")
	private UserDao userDao;
	
	public User getUserByUname(String uName){
		List<User> list = null;
		list = userDao.getUserByUname(uName);
		if(list == null || list.size() == 0 ){
			return null;
		}
		return list.get(0);
	}
	public boolean updateUser(User user){
		
		return userDao.updateUser(user);
	}
	public boolean addUser(User user){
		return userDao.addUser(user);
	}

}

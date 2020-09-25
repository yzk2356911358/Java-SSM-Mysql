package com.yzk.nfcp.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yzk.nfcp.dao.UserDao;
import com.yzk.nfcp.model.User;
import com.yzk.nfcp.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	// 注入Service依赖
	@Autowired
	private UserDao userDao;

	
	public boolean login(String username, String password) {
		for (User user : userDao.queryAll()) {
			if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
				return true;
			}
		}
		return false;
	}

	public List<User> getList() {
		return userDao.queryAll();
	}

	public void add(User user) {
		userDao.add(user);
	}

	public User queryById(int id) {
		return userDao.queryById(id);
	}

	public List<User> queryAll() {
		return userDao.queryAll();
	}

	public void del(int id) {
		userDao.del(id);
	}

	public void up(User user) {
		userDao.up(user);
	}

}

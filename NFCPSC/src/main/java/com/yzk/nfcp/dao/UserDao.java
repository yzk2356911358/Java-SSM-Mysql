package com.yzk.nfcp.dao;

import java.util.List;

import com.yzk.nfcp.model.User;

public interface UserDao {
	User queryById(int id);
	void add(User user);
	List<User> queryAll();
	void del(int id);
	void up(User user);
}

package com.yzk.nfcp.dao;

import java.util.List;

import com.yzk.nfcp.model.Admin;

public interface AdminDao {

	Admin queryById(int id);

	List<Admin> queryAll();

	void del(int id);

	void up(Admin admin);
}

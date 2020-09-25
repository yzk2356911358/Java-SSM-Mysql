package com.yzk.nfcp.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yzk.nfcp.dao.AdminDao;

import com.yzk.nfcp.model.Admin;
import com.yzk.nfcp.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	// 注入Service依赖
	@Autowired
	private AdminDao adminDao;

	public boolean login(String username, String password) {

		for (Admin admin : adminDao.queryAll()) {
			if (admin.getUsername().equals(username) && admin.getPassword().equals(password)) {
				return true;
			}
		}
		return false;
	}

	public Admin queryById(int id) {
		return adminDao.queryById(id);
	}

	public List<Admin> queryAll() {
		return adminDao.queryAll();
	}

	public void del(int id) {
		adminDao.del(id);
	}

	public void up(Admin admin) {
		adminDao.up(admin);
	}

}

package com.yzk.nfcp.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yzk.nfcp.dao.GwcDao;
import com.yzk.nfcp.model.Gouwc;
import com.yzk.nfcp.service.GouwcService;

@Service
public class GouwcServiceImp implements GouwcService {
	@Autowired
	private GwcDao gwcDao;

	public Gouwc queryById(int id) {
		// TODO Auto-generated method stub
		return gwcDao.queryById(id);
	}

	public List<Gouwc> queryAll() {
		// TODO Auto-generated method stub
		return gwcDao.queryAll();
	}

	public void del(int id) {
		gwcDao.del(id);
	}

	public void up(Gouwc gouwc) {
		gwcDao.up(gouwc);
	}

	public void add(Gouwc gouwc) {
		gwcDao.add(gouwc);
	}

}

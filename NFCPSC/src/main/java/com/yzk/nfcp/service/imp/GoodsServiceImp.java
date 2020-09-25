package com.yzk.nfcp.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yzk.nfcp.dao.GoodsDao;
import com.yzk.nfcp.model.Goods;
import com.yzk.nfcp.service.GoodsService;

@Service
public class GoodsServiceImp implements GoodsService{
	@Autowired 
	private GoodsDao goodsDao;
	public Goods queryById(int id) {
		
		return goodsDao.queryById(id);
	}

	public void add(Goods goods) {
		goodsDao.add(goods);
	}

	public List<Goods> queryAll() {
		return goodsDao.queryAll();
	}

	public void del(int id) {
		goodsDao.del(id);
	}

	public void up(Goods goods) {
		goodsDao.up(goods);
	}

}

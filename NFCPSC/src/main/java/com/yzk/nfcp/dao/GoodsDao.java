package com.yzk.nfcp.dao;

import java.util.List;

import com.yzk.nfcp.model.Goods;

public interface GoodsDao {
	Goods queryById(int id);
	void add(Goods goods);
	List<Goods> queryAll();
	void del(int id);
	void up(Goods goods);
}

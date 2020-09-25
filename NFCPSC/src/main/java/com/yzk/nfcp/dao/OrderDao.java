package com.yzk.nfcp.dao;

import java.util.List;

import com.yzk.nfcp.model.Orders;

public interface OrderDao {
	Orders queryById(int id);
	void add(Orders goods);
	List<Orders> queryAll();
	void del(int id);
	void up(Orders order);
}

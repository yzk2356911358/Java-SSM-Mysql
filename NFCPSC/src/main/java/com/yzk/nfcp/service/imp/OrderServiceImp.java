package com.yzk.nfcp.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yzk.nfcp.dao.OrderDao;
import com.yzk.nfcp.model.Orders;
import com.yzk.nfcp.service.OrderService;

@Service
public class OrderServiceImp implements OrderService {
	@Autowired
	private OrderDao oderDao;

	public Orders queryById(int id) {
		return oderDao.queryById(id);
	}

	public void add(Orders order) {
		oderDao.add(order);
	}

	public List<Orders> queryAll() {
		return oderDao.queryAll();
	}

	public void del(int id) {
		oderDao.del(id);
	}

	public void up(Orders order) {
		oderDao.up(order);
	}

}

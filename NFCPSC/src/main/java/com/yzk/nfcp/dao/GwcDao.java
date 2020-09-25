package com.yzk.nfcp.dao;

import java.util.List;

import com.yzk.nfcp.model.Gouwc;

public interface GwcDao {

	Gouwc queryById(int id);

	List<Gouwc> queryAll();

	void del(int id);

	void up(Gouwc gouwc);

	void add(Gouwc gouwc);
}

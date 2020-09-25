package com.yzk.nfcp.dao;

import java.util.List;

import com.yzk.nfcp.model.Evaluation;

public interface EvaluationDao {
	Evaluation queryById(int id);
	void add(Evaluation evaluation);
	List<Evaluation> queryAll();
	void del(int id);
	void up(Evaluation evaluation);
}

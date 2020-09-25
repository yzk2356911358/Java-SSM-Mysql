package com.yzk.nfcp.service;

import java.util.List;

import com.yzk.nfcp.model.Evaluation;

/**
 * 业务接口：站在"使用者"角度设计接口 三个方面：方法定义粒度，参数，返回类型（return 类型/异常）
 */
public interface EvaluationService {

	Evaluation queryById(int id);
	void add(Evaluation evaluation);
	List<Evaluation> queryAll();
	void del(int id);
	void up(Evaluation evaluation);
}

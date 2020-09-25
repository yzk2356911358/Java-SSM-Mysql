package com.yzk.nfcp.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yzk.nfcp.dao.EvaluationDao;
import com.yzk.nfcp.model.Evaluation;
import com.yzk.nfcp.service.EvaluationService;

@Service
public class EvaluationServiceImp implements EvaluationService {
	@Autowired
	private EvaluationDao evaluationDao;

	public Evaluation queryById(int id) {
		return evaluationDao.queryById(id);
	}

	public void add(Evaluation evaluation) {
		evaluationDao.add(evaluation);
	}

	public List<Evaluation> queryAll() {
		return evaluationDao.queryAll();
	}

	public void del(int id) {
		evaluationDao.del(id);
	}

	public void up(Evaluation evaluation) {
		evaluationDao.up(evaluation);
	}

}

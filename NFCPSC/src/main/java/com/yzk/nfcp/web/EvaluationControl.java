package com.yzk.nfcp.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yzk.nfcp.model.Evaluation;
import com.yzk.nfcp.service.EvaluationService;

@Controller
@RequestMapping("/evaluation")
public class EvaluationControl {
	@Autowired
	private EvaluationService evaluationService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private String list(Model model) {
		List<Evaluation> list = evaluationService.queryAll();
		model.addAttribute("list", list);
		return "views/evaluation_list";
	}

	@RequestMapping(value = "/del", method = RequestMethod.GET)
	private String del(Model model, int id) {
		evaluationService.del(id);
		List<Evaluation> list = evaluationService.queryAll();
		model.addAttribute("list", list);
		return "views/evaluation_list";
	}

	@RequestMapping(value = "/get", method = RequestMethod.GET)
	private String get(Model model, int id) {
		model.addAttribute("evaluation", evaluationService.queryById(id));
		return "views/up_evaluation";
	}

	@RequestMapping(value = "/up")
	private String up(Model model, int id, String hf) {
		Evaluation evaluation = evaluationService.queryById(id);
		evaluation.setHf(hf);
		evaluationService.up(evaluation);
		List<Evaluation> list = evaluationService.queryAll();
		model.addAttribute("list", list);
		return "views/evaluation_list";
	}
}

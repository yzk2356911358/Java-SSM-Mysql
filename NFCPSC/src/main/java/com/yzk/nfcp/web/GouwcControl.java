package com.yzk.nfcp.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yzk.nfcp.model.Goods;
import com.yzk.nfcp.model.Gouwc;
import com.yzk.nfcp.service.GoodsService;
import com.yzk.nfcp.service.GouwcService;

@Controller
@RequestMapping("/gouwc")
public class GouwcControl {
	@Autowired
	private GouwcService gouwcService;
	@Autowired
	private GoodsService goodsService;

	@RequestMapping("/list")
	public String userlist(Model model) {
		model.addAttribute("list", gouwcService.queryAll());
		return "views/gouwc_list";
	}

	@RequestMapping("/del")
	public String del(Model model, int id) {
		gouwcService.del(id);
		model.addAttribute("list", gouwcService.queryAll());
		return "views/gouwc_list";
	}

	@RequestMapping("/add")
	public String add(Model model, int id, HttpSession session) {
		Goods goods = goodsService.queryById(id);
		int uid = (Integer) session.getAttribute("uid");
		for (Gouwc gouwc : gouwcService.queryAll()) {
			if (gouwc.getUid() == uid && gouwc.getGname().equals(goods.getName())) {
				gouwc.setSl(gouwc.getSl() + 1);
				gouwcService.up(gouwc);
				return "";
			}
		}
		Gouwc gouwc = new Gouwc();
		gouwc.setGname(goods.getName());
		gouwc.setDj(goods.getDj());
		gouwc.setSl(1);
		gouwc.setUid(uid);
		gouwcService.add(gouwc);
		model.addAttribute("goods", goodsService.queryAll());
		return "home";
	}

	@RequestMapping("/get")
	public String get(Model model,HttpSession session) {
		List<Gouwc> list = new ArrayList<Gouwc>();
		int uid=(Integer) session.getAttribute("uid");
		for(Gouwc gouwc : gouwcService.queryAll())
		{
			if(gouwc.getUid()==uid)
			{
				list.add(gouwc);
			}
		}
		model.addAttribute("list", list);
		return "views/gouwc_list";
	}
	

	@RequestMapping("/up")
	public String up(Model model, Gouwc gouwc) {
		gouwcService.up(gouwc);
		model.addAttribute("list", gouwcService.queryAll());
		return "views/gouwc_list";
	}
}

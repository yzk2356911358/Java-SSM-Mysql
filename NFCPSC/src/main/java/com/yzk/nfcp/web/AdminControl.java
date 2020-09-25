package com.yzk.nfcp.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yzk.nfcp.model.Admin;
import com.yzk.nfcp.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminControl {
	@Autowired
	private AdminService adminservice;
	
	@RequestMapping("/adminlist")
	public String adminlist(Model model) {
		model.addAttribute("list", adminservice.queryAll());
		return "views/admin_list";
	}
	@RequestMapping("/del")
	public String del(Model model, int id) {
		adminservice.del(id);
		model.addAttribute("list", adminservice.queryAll());
		return "views/admin_list";
	}
	@RequestMapping("/get")
	public String get(Model model, int id) {
		System.out.println(id);
		System.out.println("queryById___"+adminservice.queryById(id));
		model.addAttribute("admin", adminservice.queryById(id));
		return "views/up_admin";
	}
	@RequestMapping("/up")
	public String up(Model model, Admin admin) {
		adminservice.up(admin);
		model.addAttribute("list", adminservice.queryAll());
		return "views/admin_list";
	}
}

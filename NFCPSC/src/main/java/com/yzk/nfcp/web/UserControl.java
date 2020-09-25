package com.yzk.nfcp.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yzk.nfcp.model.User;
import com.yzk.nfcp.service.UserService;

@Controller
@RequestMapping("/user")
public class UserControl {
	@Autowired
	private UserService userServier;

	@RequestMapping("/userlist")
	public String userlist(Model model) {
		model.addAttribute("list", userServier.queryAll());
		return "views/user_list";
	}

	@RequestMapping("/del")
	public String del(Model model, int id) {
		userServier.del(id);
		model.addAttribute("list", userServier.queryAll());
		return "views/user_list";
	}

	@RequestMapping("/add")
	public String add(Model model, User user) {
		userServier.add(user);
		model.addAttribute("list", userServier.queryAll());
		return "views/user_list";
	}

	@RequestMapping("/get")
	public String get(Model model, int id) {
		model.addAttribute("user", userServier.queryById(id));
		return "views/up_user";
	}
	@RequestMapping("/getme")
	public String getme(Model model,HttpSession session) {
		model.addAttribute("user", userServier.queryById((Integer) session.getAttribute("uid")));
		return "views/user_message";
	}

	@RequestMapping("/up")
	public String up(Model model, User user) {
		System.out.println(user);
		userServier.up(user);
		model.addAttribute("list", userServier.queryAll());
		return "views/user_list";
	}
	@RequestMapping("/uptow")
	public String uptow(Model model, User user,HttpSession session) {
		userServier.up(user);
		model.addAttribute("user", userServier.queryById((Integer) session.getAttribute("uid")));
		return "views/user_message";
	}
}

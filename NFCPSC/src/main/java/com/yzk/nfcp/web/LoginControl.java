package com.yzk.nfcp.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yzk.nfcp.model.User;
import com.yzk.nfcp.service.AdminService;
import com.yzk.nfcp.service.GoodsService;
import com.yzk.nfcp.service.UserService;

@Controller
@RequestMapping("/")
public class LoginControl {
	@Autowired
	private AdminService adminservice;
	@Autowired
	private UserService userServier;
	@Autowired
	private GoodsService goodsService;

	@RequestMapping("loginpage")
	public String test() {
		return "login";
	}
	@RequestMapping("home")
	public String home(Model model) {
		model.addAttribute("goods", goodsService.queryAll());
		return "home";
	}
	@RequestMapping("login")
	public String login(String username, String password, Model model, String type, HttpSession httpSession) {
		System.out.println(type);
		if (type.equals("admin")) {
			if (adminservice.login(username, password)) {
				httpSession.setAttribute("username", username);
				return "index";
			}
		} else {
			if (userServier.login(username, password)) {
				for (User user : userServier.queryAll()) {
					if (user.getUsername().equals(username)) {
						httpSession.setAttribute("uid", user.getId());
					}
				}
				httpSession.setAttribute("username", username);
				model.addAttribute("goods", goodsService.queryAll());
				return "home";
			}
		}

		model.addAttribute("error", "用户名或密码错误");
		return "login";
	}

	@RequestMapping("reg")
	public String reg(String username, String password, Model model, User user) {
		userServier.add(user);
		return "login";
	}
}

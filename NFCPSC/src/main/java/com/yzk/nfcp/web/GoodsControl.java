package com.yzk.nfcp.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mchange.v2.c3p0.stmt.GooGooStatementCache;
import com.yzk.nfcp.model.Book;
import com.yzk.nfcp.model.Goods;
import com.yzk.nfcp.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsControl {
	@Autowired
	private GoodsService goodsservice;

	@RequestMapping("/add")
	public String add(@RequestParam("file") MultipartFile file, HttpServletRequest req, Goods goods, Model model)
			throws IllegalStateException, IOException {
		// 判断文件是否为空，空则返回失败页面
		if (file.isEmpty()) {
			return "failed";
		}
		// 获取文件存储路径（绝对路径）
		String path = "C:\\Users\\Msb\\Documents\\workspace-spring-tool-suite-4-4.7.1.RELEASE\\.metadata\\"
				+ ".plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\NFCPSC\\file";
		// 获取原文件名
		String fileName = file.getOriginalFilename();
		// 创建文件实例
		File filePath = new File(path, fileName);
		// 如果文件目录不存在，创建目录
		if (!filePath.getParentFile().exists()) {
			filePath.getParentFile().mkdirs();
			System.out.println("创建目录" + filePath);
		}
		// 写入文件
		file.transferTo(filePath);
		goods.setImg(fileName);
		goodsservice.add(goods);
		model.addAttribute("goodss", goodsservice.queryAll());
		List<Goods> list = goodsservice.queryAll();
		model.addAttribute("list", list);
		return "views/goods_list";
	}

	@RequestMapping("/up")
	public String up(@RequestParam("file") MultipartFile file, HttpServletRequest req, Goods goods, Model model)
			throws IllegalStateException, IOException {

		// 判断文件是否为空，空则返回失败页面
		if (file.isEmpty()) {
			goods.setImg(goodsservice.queryById(goods.getId()).getImg());
			goodsservice.up(goods);
			model.addAttribute("goodss", goodsservice.queryAll());
			List<Goods> list = goodsservice.queryAll();
			model.addAttribute("list", list);
			return "views/goods_list";
		}
		// 获取原文件名
		String fileName = file.getOriginalFilename();
		// 获取文件存储路径（绝对路径）
		String path = "C:\\Users\\Msb\\Documents\\workspace-spring-tool-suite-4-4.7.1.RELEASE\\.metadata\\.plugins\\o"
				+ "rg.eclipse.wst.server.core\\tmp0\\wtpwebapps\\NFCPSC\\file";

		// 创建文件实例
		File filePath = new File(path, fileName);
		// 如果文件目录不存在，创建目录
		if (!filePath.getParentFile().exists()) {
			filePath.getParentFile().mkdirs();
			System.out.println("创建目录" + filePath);
		}
		// 写入文件
		file.transferTo(filePath);
		goods.setImg(fileName);
		goodsservice.up(goods);
		model.addAttribute("goodss", goodsservice.queryAll());
		List<Goods> list = goodsservice.queryAll();
		model.addAttribute("list", list);
		return "views/goods_list";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private String list(Model model) {
		List<Goods> list = goodsservice.queryAll();
		model.addAttribute("list", list);
		return "views/goods_list";
	}

	@RequestMapping(value = "/del", method = RequestMethod.GET)
	private String del(Model model, int id) {
		goodsservice.del(id);
		List<Goods> list = goodsservice.queryAll();
		model.addAttribute("list", list);
		return "views/goods_list";
	}

	@RequestMapping(value = "/get", method = RequestMethod.GET)
	private String get(Model model, int id) {
		model.addAttribute("goods", goodsservice.queryById(id));
		return "views/up_goods";
	}

}

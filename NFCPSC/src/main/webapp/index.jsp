<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="assets/css/layui.css">
<link rel="stylesheet" href="assets/css/admin.css">
<link rel="icon" href="/favicon.ico">
<title>管理后台</title>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header custom-header">
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item slide-sidebar" lay-unselect><a
					href="javascript:;" class="icon-font"><i class="ai ai-menufold"></i></a>
				</li>
			</ul>
			<p class="datexians">土石村农副产品销售网站</p>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="javascript:;">${sessionScope.username}</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="login.jsp">退出</a>
						</dd>
					</dl></li>
			</ul>
		</div>

		<div class="layui-side custom-admin">
			<div class="layui-side-scroll">
				<div class="custom-logo">
					<img src="assets/images/logo.png" alt="" />
					<h1>后台管理</h1>
				</div>
				<ul id="Nav" class="layui-nav layui-nav-tree">
					<li class="layui-nav-item"><a href="javascript:;"> <i
							class="layui-icon">&#xe665;</i> <em>角色管理</em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="./admin/adminlist">管理员查询</a>
							</dd>
							<dd>
								<a href="./user/userlist">用户查询</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;"> <i
							class="layui-icon">&#xe857;</i> <em>商品信息管理</em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="./goods/list">商品查询</a>
							</dd>
							<dd>
								<a href="./views/add_goods.jsp">商品新增</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;"> <i
							class="layui-icon">&#xe663;</i> <em>商品图片管理</em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="./goods/list">图片查询</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;"> <i
							class="layui-icon">&#xe653;</i> <em>订单管理</em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="./order/list">订单查询</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;"> <i
							class="layui-icon">&#xe631;</i> <em>评价管理</em>
					</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="./evaluation/list">评论查询</a>
							</dd>
						</dl></li>
				</ul>
			</div>
		</div>
		<div class="layui-body">
			<div class="layui-tab app-container" lay-allowClose="true"
				lay-filter="tabs">
				<ul id="appTabs" class="layui-tab-title custom-tab"
					style="display: none;"></ul>
				<div id="appTabPage" class="layui-tab-content"></div>
			</div>
		</div>

		<div class="mobile-mask"></div>
	</div>
	<script src="assets/layui.js"></script>
	<script src="index.js" data-main="home"></script>
</body>
</html>
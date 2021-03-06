<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="zh-CN">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="meta description">
<title>Home</title>

<!--=== Favicon ===
<link rel="shortcut icon" href="assets/img/favicon.ico"
	type="image/x-icon" />

<!-- Google fonts include -->
<!-- <link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,900%7CYesteryear"
	rel="stylesheet">
-->
<!-- All Vendor & plugins CSS include -->
<link href="../assets/css/vendor2.css" rel="stylesheet">
<!-- Main Style CSS -->
<link href="../assets/css/style2.css" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/layui.css">
<link rel="stylesheet" href="../assets/css/view.css" />
<link rel="stylesheet" href="../assets/css/admin.css" />
</head>
<body>
	<!-- Start Header Area -->
	<header class="header-area">
		<!-- main header start -->
		<div class="main-header d-none d-lg-block">
			<!-- header top start -->
			<div class="header-top bdr-bottom">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-6">
							<div class="welcome-message">
								<p style="font-size: 20px;">欢迎来到土石村农副产品销售网站</p>
							</div>
						</div>
						<div class="col-lg-6 text-right"></div>
					</div>
				</div>
			</div>
			<!-- header top end -->

			<!-- header middle area start -->
			<div class="header-main-area sticky">
				<div class="container">
					<div class="row align-items-center position-relative">
						<!-- start logo area -->
						<div class="col-lg-3">
							<div class="logo">
								<a href="index.html"> <img src="assets/img/logo/logo.png"
									alt="">
								</a>
							</div>
						</div>
						<!-- start logo area -->
						<!-- main menu area start -->
						<div class="col-lg-6 position-static">
							<div class="main-menu-area">
								<div class="main-menu">
									<!-- main menu navbar start -->
									<nav class="desktop-menu">
										<ul>
											<li><a href="../home" style="font-size: 25px;">首页</a></li>
											<li><a href="../gouwc/get" style="font-size: 25px;">我的购物车</a></li>
											<li><a href="../order/orderme" style="font-size: 25px;">我的订单</a></li>
										</ul>
									</nav>
									<!-- main menu navbar end -->
								</div>
							</div>
						</div>
						<!-- main menu area end -->

						<!-- mini cart area start -->
						<div class="col-lg-3">
							<div class="header-configure-wrapper">
								<div class="header-configure-area">
									<ul class="nav justify-content-end">
										<li class="user-hover"><a href="#">个人中心 </a>
											<ul class="dropdown-list">
												<li><a href="#">个人信息</a></li>
												<li><a href="../loginpage">退出登录</a></li>
											</ul></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- mini cart area end -->

					</div>

				</div>

			</div>
			<div class="layui-content">
				<div class="layui-row">
					<div class="layui-card">
						<div class="table-responsive">
							<table class="layui-table" lay-skin="line" lay-size="lg"
								id="table">
								<thead>
									<tr>
										<th width="15%">编号</th>
										<th>商品名称</th>
										<th>单价</th>
										<th>数量</th>
										<th>收件人</th>
										<th>收货地址</th>
										<th scope="3">操作</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="temp" items="${list }">
										<form action="../order/add" method="post">
										<input type="hidden" value="${temp.id }" name="id"></input>
										<tr>
											<td>${temp.id }</td>
											<td>${temp.gname}</td>
											<td>${temp.dj }</td>
											<td>${temp.sl }</td>
											<td><input type="text" name="sjr"> </td>
											<td><input type="text" name="addred"> </td>
											<td>
												<button type="submit" onclick="ck();">提交订单</button> <a
												href="../gouwc/del?id=${temp.id }"> 删除 </a>
											</td>
										</tr>
										</form>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>

</html>

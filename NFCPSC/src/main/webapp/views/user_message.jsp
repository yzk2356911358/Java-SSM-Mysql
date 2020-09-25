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
<link rel="stylesheet" href="../css/style.css">
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
		<div class="content">
		<form action="../user/uptow" method="post">
			<input type="hidden" name="id" value="${user.id }" />
			<div class="form sign-in">
				<label> <span>用户名</span> <input type="text" name="username"
					value="${user.username }" />
				</label> <label> <span>密码</span> <input type="password"
					name="password" value="${user.password }" />
				</label> <label> <span>年龄</span> <input type="tel" name="age"
					value="${user.age }" />
				</label> <label> <select name="gender" id="selecte"
					class="shortselect">
						<option value="男" selected="selected">男</option>
						<option value="女">女</option>
				</select>
				</label>
				<button type="submit" class="submit">修改</button>
			</div>
		</form>

	</div>
		</div>
	</header>
</body>

</html>

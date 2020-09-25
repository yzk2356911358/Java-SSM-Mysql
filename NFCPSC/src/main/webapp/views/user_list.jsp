<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>管理员列表</title>
<link rel="stylesheet" href="../assets/css/layui.css">
<link rel="stylesheet" href="../assets/css/view.css" />
<link rel="stylesheet" href="../assets/css/admin.css" />
</head>
<body class="layui-view-body">
	<div class="layui-content">
		<!--面包屑导航-->
		<div class="mianb">
			<div class="mblf layui-col-xs6 layui-col-md6">
				<i class="layui-icon">&#xe656;</i>
				<p>
					角色管理 > <span>用户查询</span>
				</p>
			</div>
			<div class="mbrt layui-col-xs6 layui-col-md6">
				<a href="../views/add_user.jsp" class="layui-btn layui-btn-normal"
					id="addbanner">增加</a>
			</div>
		</div>
		<!--面包屑导航-->
		<div class="layui-row">
			<div class="layui-card">
				<div class="table-responsive">
					<table class="layui-table" lay-skin="line" lay-size="lg" id="table">
						<thead>
							<tr>
								<th width="15%">编号</th>
								<th>用户名</th>
								<th>密码</th>
								<th>性别</th>
								<th>年龄</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="temp" items="${list }">
								<tr>
									<td>${temp.id }</td>
									<td>${temp.username }</td>
									<td>${temp.password }</td>
									<td>${temp.gender }</td>
									<td>${temp.age }</td>
									<td><a href="../user/get?id=${temp.id }">修改</a> <a href="../user/del?id=${temp.id }">删除</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
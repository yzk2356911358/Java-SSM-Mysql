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
				订单管理> <span>订单查询</span>
				</p>
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
								<th>图片</th>
								<th>名称</th>
								<th>单价</th>
								<th>数量</th>
								<th>收件人</th>
								<th>收件地址</th>
								<th scope="2">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="temp" items="${list }">
								<tr>
									<td>${temp.id }</td>
									<td><img alt="" src="../file/${temp.img }"></td>
									<td>${temp.name }</td>
									<td>${temp.dj }</td>
									<td>${temp.sl }</td>
									<td>${temp.sjr }</td>
									<td>${temp.addred }</td>
									<td><a href="../order/del?id=${temp.id }">删除</a></td>
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
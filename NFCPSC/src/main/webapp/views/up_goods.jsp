<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>发布职位2</title>
<link rel="stylesheet" href="../assets/css/layui.css">
<link rel="stylesheet" href="../assets/css/view.css" />
<link rel="stylesheet" href="../assets/css/admin.css" />
<link rel="stylesheet" href="../assets/css/style.css" />
</head>
<body class="layui-view-body">
	<div class="layui-content">
		<!--指示条-->
		<div class="layui-row">
			<div class="layui-card positionbox">
				<fieldset class="layui-elem-field layui-field-title"
					style="margin-top: 20px;">
					<legend>修改商品</legend>
				</fieldset>
				<form class="layui-form" action="../goods/up" method="post" enctype="multipart/form-data">
				<input type="hidden" name="id" autocomplete="off"
								class="layui-input" value="${goods.id }">
					<div class="layui-form-item">
						<label class="layui-form-label">商品种类</label>
						<div class="layui-input-block">
							<select name="zl" lay-filter="aihao" >
								<option value="0">请选择已有种类</option>
								<option value="河南白象">河南白象</option>
								<option value="蜜雪冰城">蜜雪冰城</option>
								<option value="欣奕除疤">欣奕除疤</option>
							</select>
						</div>
					</div>
				
				<fieldset class="layui-elem-field layui-field-title"
					style="margin-top: 20px;">
					<legend>商品信息</legend>
				</fieldset>
					<div class="layui-form-item">
						<label class="layui-form-label"><span class="col-red">*</span>商品名称</label>
						<div class="layui-input-block">
							<input type="text" name="name" autocomplete="off"
								class="layui-input" value="${goods.name }">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label"><span class="col-red">*</span>来源农户</label>
						<div class="layui-input-block">
							<input type="text" name="ly" autocomplete="off"
								class="layui-input" value="${goods.ly }">
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">商品图片</label>
							<div class="layui-input-block">
								<input type="file" name="file" class="layui-btn layui-btn-danger">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">商品单价</label>
							<div class="layui-input-inline" style="width: 100px;">
								<input type="text" name="dj" placeholder=""
									autocomplete="off" class="layui-input" value="${goods.dj }">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">商品库存</label>
							<div class="layui-input-inline" style="width: 100px;">
								<input type="text" name="kc" placeholder=""
									autocomplete="off" class="layui-input" value="${goods.kc }">
							</div>
						</div>
					</div>
				
				<div class="layui-form-item">
					<div class="layui-input-block">
							<button type="submit" class="layui-btn layui-btn-normal">修改商品</button>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../assets/layui.all.js"></script>
</body>
</html>

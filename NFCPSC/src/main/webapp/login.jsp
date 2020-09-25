<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="utf-8">
<title>注册登录页面</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="content">
		<form action="./login" method="post">
			<div class="form sign-in">
				<h2>欢迎回来</h2>
				<label> <span>用户名</span> <input type="text" name="username" />
				</label> <label> <span>密码</span> <input type="password"
					name="password" />
				</label> <label> <select name="type" id="selecte"
					class="shortselect">
						<option value="admin" selected="selected">管理员</option>
						<option value="user">用户</option>
				</select>
				</label>
				<button type="submit" class="submit">登 录</button>
				<label> <a href="./reg.jsp">注册</a>
				</label>
				
				<label> <span style="color: red; font-size: 10px;">${error}</span></label>
			</div>
		</form>
		
	</div>
</body>

</html>
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
		<form action="./reg" method="post">
			<div class="form sign-in">
				<h2>欢迎注册</h2>
				<label> <span>用户名</span> <input type="text" name="username" />
				</label> <label> <span>密码</span> <input type="password"
					name="password" />
				</label>
				<label> <span>年龄</span> <input type="tel"
					name="age" />
				</label>
				<label> <select name="gender" id="selecte"
					class="shortselect">
						<option value="男" selected="selected">男</option>
						<option value="女">女</option>
				</select>
				</label>
				<button type="submit" class="submit">注册</button>
					<label> <a href="./login.jsp">登录</a></label>
			</div>
		</form>
		
	</div>
</body>

</html>
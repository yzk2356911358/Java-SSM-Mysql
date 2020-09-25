<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
	<div class="content">
		<form action="../user/up" method="post">
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
</body>

</html>
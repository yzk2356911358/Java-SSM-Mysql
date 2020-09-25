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
		<form action="../admin/up" method="post">
			<input type="hidden" name="id" value="${admin.id }" />
			<div class="form sign-in">
				<label> <span>用户名</span> <input type="text" name="username"
					value="${admin.username }" />
				</label> <label> <span>密码</span> <input type="username"
					name="password" value="${admin.password }" />
				</label>
				<button type="submit" class="submit">修改</button>
			</div>
		</form>

	</div>
</body>

</html>
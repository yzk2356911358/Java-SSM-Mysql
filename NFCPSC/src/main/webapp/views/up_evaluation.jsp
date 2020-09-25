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
		<form action="../evaluation/up" method="post">
		<input type="hidden" name="id"
					value="${evaluation.id }" />
			<input type="hidden" name="id" value="${user.id }" />
			<div class="form sign-in">
				<label> <span>内容</span> <input type="text" name=hf
					value="${evaluation.hf }" />
				</label>
				<button type="submit" class="submit">回复</button>
			</div>
		</form>

	</div>
</body>

</html>
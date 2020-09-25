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
    <link rel="stylesheet" href="../assets/css/view.css"/>
    <link rel="stylesheet" href="../assets/css/admin.css"/>    
</head>
<body class="layui-view-body">
    <div class="layui-content">
    	<!--面包屑导航-->
    	<div class="mianb">
    		<div class="mblf layui-col-xs6 layui-col-md6">
    			 <i class="layui-icon">&#xe656;</i>
    			 <p>角色管理 > <span>用户查询</span></p>
    		</div>
    	</div>
    	<!--面包屑导航-->
        <div class="layui-row">
            <div class="layui-card">
            	<div class="table-responsive">
			 		  <table class="layui-table" lay-skin="line" lay-size="lg" id="table">						  
						  <thead>
						    <tr>
						      <th width="15%">商品编号</th>
						      <th>用户名</th>
						      <th>时间</th>						     
						      <th>内容</th>						     
						      <th>回复</th>						     
						      <th>操作</th>
						    </tr> 
						  </thead>
						  <tbody>
						  	<c:forEach var="temp" items="${list }">
						    <tr>
						      <td>${temp.gid }</td>
						      <td>						      	  
						      	  ${temp.username }
						      </td>
						      <td>						      	  
						      	  ${temp.date }
						      </td>
						      <td>						      	  
						      	  ${temp.lr }
						      </td>
						      <td>						      	  
						      	  ${temp.hf }
						      </td>
						      <td>
						      	 <a  href="../evaluation/get?id=${temp.id }">回复</a>
						      	 <a  href="../evaluation/del?id=${temp.id }">删除</a>
						      </td>
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
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>

<body style="background-image: url(img/ww.jpg);">
<form method="post" id="form" >
 <center> <h1>用户信息</h1></center><hr />
		<div>
			<table class="table" style="text-align: center;">
				
				<tbody>
					<tr class="success">
						<td><strong>ID：</strong>&emsp;<span><c:out value="${id}"/></span></td>
						
					</tr>
					<tr class="warning">
						<td><strong> 用户名：</strong>&emsp;<span><c:out value="${username}"/></span></td>

					</tr>
					
					<tr class="info">
						<td><strong>密码：</strong>&emsp;<span><c:out value="${password}"/></span></td>

					</tr>
					
					<tr class="danger">
						<td><strong>邮箱：</strong>&emsp;<span><c:out value="${mail}"/></span></td>

					</tr>
					
					<tr class="info">
						<td><strong>系统权限：</strong>&emsp;<span><c:out value="${position}"/></span></td>

					</tr>
					
												
					<tr>
						<td><button class="btn btn-default" ><a href="indirect4.jsp">返回</a></button></td>
					</tr>
					
					
				</tbody>
			</table>
		</div>

</form>
</body>
</html>

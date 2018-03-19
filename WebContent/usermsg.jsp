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
	<style type="text/css">
	.table{vertical-align:bottom; width:800px; margin:auto auto;}
	.td{pading:15px; margin-left:15px;}
	
	</style>
</head>

<body style="background-image: url(img/ww.jpg);">
<form method="post" id="form" >
<center> <h1><font color="red">员工信息</font></h1></center><hr />
		<div>
			<table class="table table-hover" >
				
				
				
					<tr>
						<td><strong>ID：</strong>&emsp;<span><%Map<String,Object> map=new HashMap<String,Object>();
        				map=(Map<String,Object>)session.getAttribute("sessionMap"); 
        				out.print(map.get("id"));%></span></td>
						<td></td>
					</tr>
					<tr class="warning">
						<td><strong> 用户名：</strong>&emsp;<span><%out.print(map.get("username"));%></span></td>
						<td><strong> 密码：</strong>&emsp;<span><%out.print(map.get("password"));%></span></td>
						
					</tr>
					
					<tr class="danger">
						<td><strong>邮箱：</strong>&emsp;<span><%out.print(map.get("mail"));%></span></td>
						<td><strong>系统权限：</strong>&emsp;<span><%out.print(map.get("position"));%></span></td>
						
					</tr>
					<tr class="info">
						<td><strong>手机号码：</strong>&emsp;<span><%out.print(map.get("phone"));%></span></td>
						<td><strong>昵称：</strong>&emsp;<span><%out.print(map.get("nickname"));%></span></td>
						
					</tr>
					
					
												
					<tr><td colspan="2" style="text-align:center"><button class="btn btn-default btn-lg" ><a href="welcome.jsp">返回</a></button></td></tr>
			</table>
		</div>

</form>
</body>
</html>
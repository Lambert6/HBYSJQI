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
<center> <h1><font color="red">出租房源信息</font></h1></center><hr />
		<div>
			<table class="table table-hover" >
				
				
				
					<tr>
						<td><strong>ID：</strong>&emsp;<span><c:out value="${t_id}"/></span></td>
						<td></td>
					</tr>
					<tr class="warning">
						<td><strong> 业主姓名：</strong>&emsp;<span><c:out value="${t_name}"/></span></td>
						<td><strong> 房源地址：</strong>&emsp;<span><c:out value="${t_address}"/></span></td>
						
					</tr>
					
					<tr class="danger">
						<td><strong>房龄</strong>&emsp;<span><c:out value="${t_age}"/></span></td>
						<td><strong>租金：</strong>&emsp;<span><c:out value="${t_qq}"/></span></td>
						
					</tr>
					<tr class="info">
						<td><strong>经纪人级别：</strong>&emsp;<span><c:out value="${t_card}"/></span></td>
						
						<td><strong>联系方式：</strong>&emsp;<span><c:out value="${t_phone}"/></span></td>
					</tr>
					
					<tr class="success">
						<td><strong>业主邮箱：</strong>&emsp;<span><c:out value="${t_email}"/></span></td>
						<td><strong>楼层：</strong>&emsp;<span><c:out value="${t_duty}"/></span></td>
						
					</tr>
					<tr class="danger">
						<td><strong>户型：</strong>&emsp;<span><c:out value="${t_nation}"/></span></td>
						<td><strong>经纪人：</strong>&emsp;<span><c:out value="${t_salary}"/></span></td>
						
					</tr>
						<tr class="success">
						<td><strong>朝向：</strong>&emsp;<span><c:out value="${t_dept}"/></span></td>
						
						
					</tr>
					
					
												
					<tr><td colspan="2" style="text-align:center"><button class="btn btn-default btn-lg" ><a href="welcome.jsp">返回</a></button></td></tr>
			</table>
		</div>

</form>
</body>
</html>
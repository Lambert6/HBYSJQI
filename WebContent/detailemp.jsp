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
						<td><strong>ID：</strong>&emsp;<span><c:out value="${c_id}"/></span></td>
						<td></td>
					</tr>
					<tr class="warning">
						<td><strong> 姓名：</strong>&emsp;<span><c:out value="${c_name}"/></span></td>
						<td><strong> 家庭地址：</strong>&emsp;<span><c:out value="${c_address}"/></span></td>
						
					</tr>
					
					<tr class="danger">
						<td><strong>年龄：</strong>&emsp;<span><c:out value="${c_age}"/></span></td>
						<td><strong>QQ：</strong>&emsp;<span><c:out value="${c_qq}"/></span></td>
						
					</tr>
					<tr class="info">
						<td><strong>性别：</strong>&emsp;<span><c:out value="${c_sex}"/></span></td>
						<td><strong>部门：</strong>&emsp;<span><c:out value="${c_dept}"/></span></td>
						
					</tr>
					
					<tr class="success">
						<td><strong>邮箱：</strong>&emsp;<span><c:out value="${c_email}"/></span></td>
						<td><strong>职位：</strong>&emsp;<span><c:out value="${c_duty}"/></span></td>
						
					</tr>
					<tr class="danger">
						<td><strong>民族:</strong>&emsp;<span><c:out value="${c_nation}"/></span></td>
						<td><strong>工资:</strong>&emsp;<span><c:out value="${c_salary}"/></span></td>
						
					</tr>
						<tr class="success">
						<td><strong>电话：</strong>&emsp;<span><c:out value="${c_phone}"/></span></td>
						<td><strong>身份证：</strong>&emsp;<span><c:out value="${c_card}"/></span></td>
						
					</tr>
					
					<tr class="warning">
						<td><strong> 开户银行：</strong>&emsp;<span><c:out value="${c_bank}"/></span></td>
						<td><strong>银行卡号：</strong>&emsp;<span><c:out value="${c_bankid}"/></span></td>
					</tr>
												
					<tr><td colspan="2" style="text-align:center"><button class="btn btn-default btn-lg" ><a href="welcome.jsp">返回</a></button></td></tr>
			</table>
		</div>

</form>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>

		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<script src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body style="background-color: #F3F3FA;" >
<div id="g_footer" >
			<div class="row-fluid">
				<div class="navbar">
					<center>当前日期：<% out.print(new java.text.SimpleDateFormat("yyyy'年'MM'月'dd'日' hh:mm:ss").format(new Date())); %><br />
					
							@天津理工大学—天津市大学软件学院 毕业设计</a></center>
					
				</div>
			</div>
		</div>
</body>
</html>

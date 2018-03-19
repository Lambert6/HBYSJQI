<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="shortcut icon" href="favicon.ico">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript">
	function check(){
		var name = document.getElementById("username");
		if(name == ""){
		    alert("用户名不能为空！");
		    return false;
		}
		var mails = document.getElementById("mail");
		if(mails == ""){
		    alert("邮箱不能为空！");
		    return false;
		}
		}
	</script>
<title>注册</title>

</head>
	<body class="style-3">
<center><h1><font color="#47D1D1">房地产信息管理系统</font></h1></center>
		
		<div class="container">
		
			<div class="row">
			<div class="col-md-1 col-md-pull-2">
					<div class="container">
						<div class="row">
							<center>
							<img src="images/sale_index.png" height="500px" width="500px" />
							</center>
						</div>
					</div>					
				</div>
				<div class="col-md-4 col-md-push-7">
					

					<!-- Start Sign In Form -->
					<form  action="${pageContext.request.contextPath }/update.action"  method="post"  name="form" onsubmit="return check()"class="fh5co-form animate-box" data-animate-effect="fadeInRight">
						<h2>找回密码</h2><h3>
			<font color="red"> <c:out value="${msg }" />
			</font>
		</h3>
						<div class="form-group">
							<label for="name" class="sr-only">Name</label>
							<input type="text" class="form-control " name="username" required="true" id="username" placeholder="请输入用户名" autocomplete="off">
						</div>
						
						<div class="form-group">
							<label for="password" class="sr-only">Password</label>
							<input type="password" class="form-control"required="true"   placeholder="请输入邮箱" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">Password</label>
							<input type="password" class="form-control"required="true" name="password" id="password"  placeholder="请输入新密码" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="re-password" class="sr-only">Re-type Password</label>
							<input type="password" class="form-control" required="true" placeholder="请确认新密码" autocomplete="off">
						</div>
						<input type="hidden" name="position" value="nul">
						
						<div class="form-group">
							<input type="submit" value="提交" class="btn btn-primary">
							<input type="reset" value="重置" class="btn btn-primary">
						</div>
					</form>
					


				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>@天津理工大学—天津市大学软件学院 毕业设计</div>
			</div>
		</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

	</body>
</html>








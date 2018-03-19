<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="favicon.ico">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>	
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/modernizr-2.6.2.min.js"></script>
<title>用户登录</title>
<script type="text/javascript">
	function doSubmit(obj) {
		if (document.getElementById("username").value == ""
				|| document.getElementById("password").value == "") {
			alert("用户名和密码必须填写");
			return false;
		}
		var login = document.getElementById("login");
		if (obj == 1) {
			login.action = "login.action?name=*&pwd=*";
			login.submit();
		} else {
			login.action = "login.action";

		}
	}
	
</script>
</head>

<body  class="style-3">
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
					<form id="login" method="post" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
						<h2>登录</h2><h3>
			<font color="red"> <c:out value="${msg }" />
			</font>
		</h3>
						<div class="form-group">
							<label for="username" class="sr-only">Username</label>
							<input type="text" class="form-control" name="sLoginName" id="username" placeholder="请输入用户名" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">Password</label>
							<input type="password" class="form-control" name="sPassword" id="password" placeholder="请输入密码" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="remember">
						<center>	<div id="v_container"
							style="border-radius:50px;width: 200px; height: 40px;"></div></center>
							<input type="text" id="code_input"
						class="form-control col-lg-2" placeholder="请输入验证码"
						style="text-align: center;" />
							</label>
						</div>
						
						<div class="form-group">
							<p> <a href="register.jsp">注册</a> | <a href="forgot.jsp">忘记密码</a></p>
						</div>
						<div class="form-group">
							<input type="submit"id="my_button"onclick="is_check();return doSubmit(1)" value="登录" class="btn btn-primary">
						
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
<script src="js/gVerify.js"></script>
<script>
	var verifyCode = new GVerify("v_container");

	document.getElementById("my_button").onclick = function() {
		var res = verifyCode
				.validate(document.getElementById("code_input").value);
		var statue = document.getElementById("cbox");
		if (res) {
			
			
			login.action = "login.action?name=*&pwd=*";
			login.submit();

		} else {
			alert("验证码错误");
			return login;
		}
	}
</script>
</html>











































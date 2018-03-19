<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<script src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<style type="text/css">
			#prompt{margin-top: -18px;}		
	</style>
	<script type="text/javascript">

	function judgmentAuthority(){
		
		
	}
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
</head>

<body>
		<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
					 	<span class="sr-only">Toggle navigation</span>
					 	<span class="icon-bar"></span>
					 	<span class="icon-bar"></span>
					 	<span class="icon-bar"></span>
					 </button> 
					  <a class="navbar-brand" href="#"><font color="#47D1D1"><strong>房地产信息管理系统</strong></font></a>
					 	<!-- <img src="img/软灰.png" alt="issHR" height="50px" style="border-radius: 10px; margin-top: -15px; "/> -->
					 </a>
				</div>
				
				<div class="collapse navbar-collapse"  id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav"     >
					
						<li >
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</li>
						<li >
							 <a href="firstpage.jsp" target="rightFrame">首页</a>
						</li>
						<!-- <li>
							 <a href="introduce.html" target="rightFrame">公司风采</a>
						</li> -->
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li style="margin-top:15px;">
					<strong>	用户名：<font color="red"><%Map<String,Object> map=new HashMap<String,Object>();
				            	map=(Map<String,Object>)session.getAttribute("sessionMap");
				            	out.println(map.get("username"));  %></font>&nbsp;
								职位：<font color="blue"><%out.println(map.get("position"));  %></font></strong>
							
			            </li>
			            <li></li>
						<li>
							 <a href="usermsg.jsp" target="rightFrame">用户信息</a>
						</li>
						
						<li>
							 <a href="login.jsp" target="_parent">退出</a>
						</li>
					</ul>
				</div>
			</nav>
			
</body>

</html>
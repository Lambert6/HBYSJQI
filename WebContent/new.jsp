<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">
			.fenye {
				text-align: center;
				margin-top: -20px;
			}
		</style>
</head>
<script language="javascript" type="text/javascript">
window.setTimeout("window.location='welcome.jsp'",3500);
</script>
<body style="background-image: url(img/ww.jpg);">
	<h1><font color="red">对不起，检索结果不存在，三秒后返回，如果浏览器无反应，点击<a href="welcome.jsp">返回</a></font></h1>
</body>

</html>
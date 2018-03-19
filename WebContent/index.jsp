<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
			<script src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script language="javascript" type="text/javascript"></script>
		<script type="text/javascript">
	//检查浏览器版本
	var Sys = {};
	var ua = navigator.userAgent.toLowerCase();
	var s;
	(s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1]:
		(s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] :
		(s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] :
		(s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] :
		(s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;

	//低于IE9以下进行跳转
	if(Sys.ie < 9) {
		//window.location.href = "sorry-for-ie.htm";
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>房地产信息管理系统</title>
</head>
<frameset rows="50,*,50" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="top.jsp" name="topFrame"  noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="120,5,*,10" frameborder="no" border="0" framespacing="0">
  	 <frame src="left.jsp" style="background-image: url(img/ww.jpg);" name="leftFrame"  noresize="noresize" id="leftFrame" title="leftFrame" />
  	 <frame src="#" name="lefttable"  noresize="noresize" id="lefttable" title="lefttable" />
    <frame src="firstpage.jsp" name="rightFrame" id="rightFrame" title="rightFrame" />
  <frame src="UntitledFrame-2"></frameset>
  <frame src="down.jsp" name="bottomFrame"  noresize="noresize" id="bottomFrame"  />
</frameset>
<noframes><body > <iframe   name="frame1"   src="test1.htm"/> 换一个浏览器 试试。</iframe>
</body></noframes>
</html>

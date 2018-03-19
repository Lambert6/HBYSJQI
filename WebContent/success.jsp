<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>登录成功</title>  
</head>  
<!-- <script type="text/javascript"> 
onload=function(){ 
setInterval(go, 1000); 
}; 
var x=3; //利用了全局变量来执行 
function go(){ 
x--; 
if(x>0){ 
document.getElementById("sp").innerHTML=x; //每次设置的x的值都不一样了。 
}else{ 
location.href='login.jsp'; 
} 
} 
</script> -->
<script language="javascript" type="text/javascript">
window.setTimeout("window.location='login.jsp'",3500);
</script>
<body>  
  <h1> <font color="red"> ${msg }</font></br>  三秒后自动跳转到登录页面</br>如果浏览器无反应请点击
    <a href="${pageContext.request.contextPath }/login.jsp">登录</a>  </h1>
</body>  
</html>  

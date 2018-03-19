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
</head>

<body style="background-image: url(img/ww.jpg);">
<form method="post" id="updateform" class="form-horizontal">			
			<h3 style="text-align: center;font-size: 20px;"><font color="red">编辑用户</font></h3>
			<input type="hidden" name="updateId" value="<c:out value="${id}"/>"/>
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">ID：</label>
				<div class="col-sm-6">
					<c:out value="${id}"/>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">用户名：</label>
				<div class="col-sm-6">
					
				<input type="text" name="username" value="<c:out value="${username}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
					
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">密码：</label>
				<div class="col-sm-6">
					<input type="text" name="password" value="<c:out value="${password}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-warning has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">邮箱：</label>
				<div class="col-sm-6">
					<input type="text" name="mail" value="<c:out value="${mail}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">系统权限：</label>
				<div class="col-sm-6">
					<select name="position" value="<c:out value="${position}"/>" class="form-control" id="inputError1">
					<option value=""></option>
					<option value="管理员">管理员</option>
					<option value="人事专员">人事专员</option>
					</select>
				</div>
			</div>
			
			
			
			
			<div class="col-sm-4"></div>
			<button type="submit" class="btn btn-primary col-sm-1"  onclick="myupdate()">提交</button>
			<div class="col-sm-2"></div>
			<button type="reset" class="btn btn-danger col-sm-1">重置</button>
			
			
  
</form>
</body>

</body>
<script type="text/javascript">
	function myupdate(){
		var updateform=document.getElementById("updateform");
		updateform.action="updateDic.action";
		alert("确定修改！");
		updateform.submit();
	}
</script>
</html>
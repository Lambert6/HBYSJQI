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
			<h3 style="text-align: center;font-size: 20px; "><font color="red">编辑客户</font></h3>
			<input type="hidden" name="updateId" value="<c:out value="${a_id}"/>"/>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">ID：</label>
				<div class="col-sm-6">
					
					<c:out value="${a_id}"></c:out>
					
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">员工名：</label>
				<div class="col-sm-6">
					<input type="text" name="a_name" value="<c:out value="${a_name}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-warning has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">年龄：</label>
				<div class="col-sm-6">
					<input type="text" name="a_age" value="<c:out value="${a_age}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">性别：</label>
				<div class="col-sm-6">
					<select name="a_sex" value="<c:out value="${a_sex}"/>" class="form-control" id="inputError1">
					<option value="男">男</option>
					<option value="女">女</option>
					</select>
				</div>
			</div>
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">邮箱：</label>
				<div class="col-sm-6">
					<input type="text" name="a_email" value="<c:out value="${a_email}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">民族：</label>
				<div class="col-sm-6">
					<input type="text" name="a_nation" value="<c:out value="${a_nation}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-warning has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">电话：</label>
				<div class="col-sm-6">
					<input type="text" name="a_phone" value="<c:out value="${a_phone}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">客户学历：</label>
				<div class="col-sm-6">
					<select name="a_address" class="form-control" id="inputError1">
					<option value="本科">本科</option>
					<option value="研究生">研究生</option>
					<option value="博士">博士</option>
					<option value="专科">专科</option>
					<option value="中专">中专</option>
					<option value="高中">高中</option>
					<option value="初中及以下">初中及以下</option>
					</select>
				</div>
			</div>
			
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">户型：</label>
				<div class="col-sm-6">
					<select name="a_qq" class="form-control" id="inputError1">
					<option value="1-1-1">1-1-1</option>
					<option value="2-1-1<H>">2-1-1</option>
					<option value="3-1-1">3-1-1</option>
					<option value="3-2-1">3-2-1</option>
					<option value="3-2-2">3-2-2</option>
					<option value="独单">独单</option>
					<option value="偏单">偏单</option>
					<option value="中单">中单</option>
					</select>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">预算价格：</label>
				<div class="col-sm-6">
					<input type="text" name="a_dept" value="<c:out value="${a_dept}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">最大需求：</label>
				<div class="col-sm-6">
					<input type="text" name="a_duty" value="<c:out value="${a_duty}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">位置：</label>
				<div class="col-sm-6">
					<input type="text" name="a_salary" value="<c:out value="${a_salary}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">意愿度：</label>
				<div class="col-sm-6">
					<select name="a_card" class="form-control" id="inputError1">
					<option value="非常强烈">非常强烈</option>
					<option value="强烈">强烈</option>
					<option value="一般">一般</option>
					<option value="较低">较低</option>
					</select>
				
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">维护经纪人：</label>
				<div class="col-sm-6">
					<input type="text" name="a_school" value="<c:out value="${a_school}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">带看次数：</label>
				<div class="col-sm-6">
					<input type="text" name="a_project" value="<c:out value="${a_project}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			
			<div class="col-sm-5"></div>
			<button type="button" class="btn btn-primary col-sm-2" onclick="myupdate()" >提交</button>
  
</form>
</body>

</body>
<script type="text/javascript">
	function myupdate(){
		var updateform=document.getElementById("updateform");
		updateform.action="updateAss.action";
		alert("确定修改！");
		updateform.submit();
	}
</script>
</html>
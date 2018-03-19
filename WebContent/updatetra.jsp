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
			<h3 style="text-align: center;font-size: 20px;"><font color="red">编辑出租房源</font></h3>
			<input type="hidden" name="updateId" value="<c:out value="${t_id}"/>"/>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">ID：</label>
				<div class="col-sm-6">
					
					<c:out value="${t_id}"></c:out>
					
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">业主姓名：</label>
				<div class="col-sm-6">
					<input type="text" name="t_name" value="<c:out value="${t_name}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-warning has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">房龄：</label>
				<div class="col-sm-6">
					<input type="text" name="t_age" value="<c:out value="${t_age}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">业主邮箱：</label>
				<div class="col-sm-6">
					<input type="text" name="t_email" value="<c:out value="${t_email}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">联系方式：</label>
				<div class="col-sm-6">
					<input type="text" name="t_phone" value="<c:out value="${t_phone}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-warning has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">房源地址：</label>
				<div class="col-sm-6">
					<input type="text" name="t_address" value="<c:out value="${t_address}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">户型：</label>
				<div class="col-sm-6">
					<input type="text" name="t_nation" value="<c:out value="${t_nation}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">租金：</label>
				<div class="col-sm-6">
					<input type="text" name="t_qq" value="<c:out value="${t_qq}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">朝向：</label>
				<div class="col-sm-6">
					<select name="t_dept" class="form-control" id="inputError1">
					<option value="">全部</option>
					<option value="东">东</option>
					<option value="南">南</option>
					<option value="北">北</option>
					<option value="西">西</option>
					<option value="东南">东南</option>
					<option value="西南">西南</option>
					<option value="西北">西北</option>
					<option value="东北">东北</option>
					</select>
				</div>
			</div>
			
			<div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">楼层</label>
				<div class="col-sm-6">
					<input type="text" name="t_duty" value="<c:out value="${t_salary}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">经纪人：</label>
				<div class="col-sm-6">
					<input type="text" name="t_salary" value="<c:out value="${t_salary}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">经纪人级别：</label>
				<div class="col-sm-6">
					<input type="text" name="t_card" value="<c:out value="${t_card}"/>" class="form-control" id="inputSuccess3" aria-describedby="inputSuccess3Status">
					<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
					<span id="inputSuccess3Status" class="sr-only">(success)</span>
				</div>
			</div>
			
			<!-- <div class="form-group has-error has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">租赁方式：</label>
				<div class="col-sm-6">
					<select name="t_bank" class="form-control" id="inputError1">
					<option value="">全部</option>
					<option value="整租">整租</option>
					<option value="合租">合租</option>
					</select>
				</div>
			</div> -->
			
			<!-- <div class="form-group has-success has-feedback">
				<label class="control-label col-sm-3" for="inputSuccess3">付款方式：</label>
				<div class="col-sm-6">
					<select name="t_bank_id" class="form-control" id="inputError1">
					<option value="">全部</option>
					<option value="季租">季租</option>
					<option value="年租">年租</option>
					<option value="月租">月租</option>
					</select>
				</div>
			</div> -->
			
			
			
			<div class="col-sm-5"></div>
			<button type="button" class="btn btn-primary col-sm-2" onclick="myupdate()">提交</button>
  
</form>
</body>

</body>
<script type="text/javascript">
	function myupdate(){
		var updateform=document.getElementById("updateform");
		updateform.action="updateTra.action";
		alert("确定修改！");
		updateform.submit();
	}
</script>
</html>
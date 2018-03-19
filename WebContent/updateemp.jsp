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
			<h3 style="text-align: center;font-size: 20px;"><font color="red">编辑员工</font></h3>
			<input type="hidden" name="updateId" value="<c:out value="${c_id}"/>"/>
		
			
			<div class="form-group has-success has-feedback">
			<label class="control-label col-lg-2" for="inputSuccess3">员工名：</label>
			<div class="col-sm-3">
				<input type="text"  name="c_name" value="<c:out value="${c_name}"/>" class="form-control"
					id="inputSuccess3" aria-describedby="inputSuccess3Status">
				<span class="glyphicon glyphicon-ok form-control-feedback"
					aria-hidden="true"></span> <span id="inputSuccess3Status"
					class="sr-only">(success)</span>
			</div>

			<label class="control-label col-sm-1" for="inputSuccess3">年龄：</label>
			<div class="col-sm-3">
				<input type="text" value="<c:out value="${c_age}"/>" name="c_age" class="form-control"
					id="inputSuccess3" aria-describedby="inputSuccess3Status">
				<span class="glyphicon glyphicon-ok form-control-feedback"
					aria-hidden="true"></span> <span id="inputSuccess3Status"
					class="sr-only">(success)</span>
			</div>
		</div>

		<div class="form-group has-warning has-feedback">
			<label class="control-label col-lg-2" for="inputSuccess3">性别：</label>
			<div class="col-sm-3">
				<div class="radio">
					<label>
						<input type="radio" name="c_sex" id="optionsRadios1" value="男" checked> 男
					</label>
					<label>
						<input type="radio" name="c_sex" id="optionsRadios2" value="女">女
					</label>
				</div>
		</div>

			<label class="control-label col-sm-1" for="inputGroupSuccess2">邮箱：</label>
			<div class="col-sm-3">
				<div class="input-group">
					<span class="input-group-addon">@</span> <input type="text"
					value="<c:out value="${c_email}"/>"	name="c_email" class="form-control" id="inputGroupSuccess2"
						aria-describedby="inputGroupSuccess2Status">
				</div>
				<span class="glyphicon glyphicon-ok form-control-feedback"
					aria-hidden="true"></span> <span id="inputGroupSuccess2Status"
					class="sr-only">(success)</span>
			</div>
		</div>

		<div class="form-group has-error has-feedback">
			<label class="control-label col-lg-2" for="inputSuccess3">民族：</label>
			<div class="col-sm-3">
				<input type="text" name="c_nation" class="form-control"
				 value="<c:out value="${c_nation}"/>"	id="inputSuccess3" aria-describedby="inputSuccess3Status">
				<span class="glyphicon glyphicon-ok form-control-feedback"
					aria-hidden="true"></span> <span id="inputSuccess3Status"
					class="sr-only">(success)</span>
			</div>

			<label class="control-label col-sm-1" for="inputSuccess3">电话：</label>
			<div class="col-sm-3">
				<input type="text" name="c_phone" class="form-control"
				value="<c:out value="${c_phone}"/>" 	id="inputSuccess3" aria-describedby="inputSuccess3Status">
				<span class="glyphicon glyphicon-ok form-control-feedback"
					aria-hidden="true"></span> <span id="inputSuccess3Status"
					class="sr-only">(success)</span>
			</div>
		</div>

		<div class="form-group has-success has-feedback">
			<label class="control-label col-sm-2" for="inputSuccess3">家庭住址：</label>
			<div class="col-sm-3">
				<input type="text" name="c_address" class="form-control"
				value="<c:out value="${c_address}"/>" 	id="inputSuccess3" aria-describedby="inputSuccess3Status">
				<span class="glyphicon glyphicon-ok form-control-feedback"
					aria-hidden="true"></span> <span id="inputSuccess3Status"
					class="sr-only">(success)</span>
			</div>

			<label class="control-label col-sm-1" for="inputSuccess3">QQ：</label>
			<div class="col-sm-3">
				<input type="text" name="c_qq" class="form-control"
			value="<c:out value="${c_qq}"/>"		id="inputSuccess3" aria-describedby="inputSuccess3Status">
				<span class="glyphicon glyphicon-ok form-control-feedback"
					aria-hidden="true"></span> <span id="inputSuccess3Status"
					class="sr-only">(success)</span>
			</div>
		</div>

		<div class="form-group has-warning has-feedback">
			<label class="control-label col-sm-2" for="inputSuccess3">部门：</label>
			<div class="col-sm-3">
				<select name="c_dept" class="form-control" id="inputError1">
					<option value="销售部">销售部</option>
					<option value="研发部">研发部</option>
					<option value="财务部">财务部</option>
					<option value="行政部">行政部</option>
				</select>
			</div>

			<label class="control-label col-sm-1" for="inputSuccess3">职位：</label>
			<div class="col-sm-3">
				<select name="c_duty" class="form-control" id="inputError1">
					<option value="经理">经理</option>
					<option value="主管">主管</option>
					<option value="主管">组长</option>
					<option value="主管">普通</option>
				</select>
			</div>
		</div>

		<div class="form-group has-error has-feedback">
			<label class="control-label col-sm-2" for="inputSuccess3">工资：</label>
			<div class="col-sm-3">
				<input type="text" value="<c:out value="${c_salary}"/>" name="c_salary" class="form-control"
					id="inputSuccess3" aria-describedby="inputSuccess3Status">
				<span class="glyphicon glyphicon-ok form-control-feedback"
					aria-hidden="true"></span> <span id="inputSuccess3Status"
					class="sr-only">(success)</span>
			</div>

			<label class="control-label col-sm-1" for="inputSuccess3">身份证：</label>
			<div class="col-sm-3">
				<input type="text" name="c_card" class="form-control"
				value="<c:out value="${c_card}"/>"	id="inputSuccess3" aria-describedby="inputSuccess3Status">
				<span class="glyphicon glyphicon-ok form-control-feedback"
					aria-hidden="true"></span> <span id="inputSuccess3Status"
					class="sr-only">(success)</span>
			</div>
		</div>

		<div class="form-group has-success has-feedback">
			<label class="control-label col-sm-2" for="inputSuccess3">开户行：</label>
			<div class="col-sm-3">
				<select name="c_bank" class="form-control" id="inputError1">
					<option value="中行">中行</option>
					<option value="农行">农行</option>
					<option value="工行">工行</option>
					<option value="建行">建行</option>
				</select>
			</div>

			<label class="control-label col-sm-1" for="inputSuccess3">银行卡：</label>
			<div class="col-sm-3">
				<input type="text" name="c_bankid" class="form-control"
				value="<c:out value="${c_bankid}"/>" 	id="inputSuccess3" aria-describedby="inputSuccess3Status">
				<span class="glyphicon glyphicon-ok form-control-feedback"
					aria-hidden="true"></span> <span id="inputSuccess3Status"
					class="sr-only">(success)</span>
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
		updateform.action="updateRow.action";
		alert("确定修改！");
		updateform.submit();
	}
</script>
</html>
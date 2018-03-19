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

<body style="background-image: url(img/ww.jpg);">
<center><h3><font color="red">全部用户</font></h3></center>
	<table class="table"  style="text-align:center; font-size: 7px; border: 1;">

		<tr>
		<thead>
					<tr>
						<th>
							ID
						</th>
						<th>
							用户名
						</th>
						<th>
							密码
						</th>
						<th>
							邮箱
						</th>
						<th>
							系统权限
						</th>
						<th>
							基本操作
						</th>
					</tr>
				</thead>
		<c:forEach items="${diclist}" var="map" varStatus="listStatus">
			<tr class="success" style="margin-top: 2px;">
				<td>${map.id}</td>
				<td>${map.username}</td>
				<td>${map.password}</td>
				<td>${map.mail}</td>
				<td>${map.position}</td>
								
				<td>
				
				<button type="button" class="btn btn-info btn-xs" onclick='mydetails(this.parentNode.parentNode)'>详情</button>
				<button type="button" class="btn btn-success btn-xs" onclick='myupdate(this.parentNode.parentNode)'>修改</button>
				<button type="button" class="btn btn-danger btn-xs" onclick='mydelete(this.parentNode.parentNode)'>删除</button>
				</td>
				
			</tr>
		</c:forEach>
	</table>
	
	<form method="post" id="form">
		<div style="visibility: none">

			<input type="hidden" id="lookId" name="iId">

		</div>
	</form>
	<form method="post" id="updateform">
		<div style="visibility: none">

			<input type="hidden" id="updateId" name="iId">

		</div>
	</form>
	<form method="post" id="deleteform">
		<div style="visibility: none">

			<input type="hidden" id="deleteId" name="deleteId">

		</div>
	</form>

	<div>
		<input type="hidden" id="position"
			value="<%Map<String, Object> map = new HashMap<String, Object>();
			map = (Map<String, Object>) session.getAttribute("sessionMap");
			out.print(map.get("position"));%>" />
	</div>
</body>
<script type="text/javascript">
	function myupdate(row){
		document.getElementById("updateId").value = row.cells[0].innerHTML;
		var position=document.getElementById("position");
		if(position.value=="管理员"){
			var updateform=document.getElementById("updateform"); 
			updateform.action="getDic.action";
			updateform.submit();  
		}else{
			alert("您没有此权限！");
		}          
	}
	
	function mydelete(row){
		document.getElementById("deleteId").value = row.cells[0].innerHTML;
		var position=document.getElementById("position");
		if(position.value=="管理员"){
			var myform=document.getElementById("deleteform");
			myform.action="deleteDic.action";
			myform.submit();  
		}else{
			alert("您没有此权限！");
		}    
	}
	
	function mydetails(row){
		document.getElementById("lookId").value = row.cells[0].innerHTML;
		var position=document.getElementById("position");
		if(position.value=="管理员"){
			var myform=document.getElementById("form");
			myform.action="getDicDetails.action";
			myform.submit();
		}else{
			alert("您没有此权限！");
		} 
	}
</script>
</html>
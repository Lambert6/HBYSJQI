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
<center><h3><font color="red">全部员工</font></h3></center>
	<table class="table"  style="text-align:center; font-size: 7px; border: 1;">

		<tr>
		<thead>
					<tr>
						<th>房源ID</th>
						<th>业主姓名</th>					
						<th>房龄</th>
						<th>业主邮箱</th>
						<th>联系方式</th>
						<th>房源地址</th>
						<th>户型</th>
						<th>租金/月(元)</th>
						<th>朝向</th>
						<th>楼层</th>
						<th>经纪人</th>
						<th>经纪人级别</th>
						
						<th>基本操作</th>
					</tr>
				</thead>
		<c:forEach items="${tralist2}" var="map" varStatus="listStatus">
			<tr class="success" style="margin-top: 2px;">
				<td>${map.t_id}</td>
				<td>${map.t_name}</td>
				
				<td>${map.t_age}</td>
				<td>${map.t_email}</td>
				<td>${map.t_phone}</td>
				<td>${map.t_address}</td>
				<td>${map.t_nation}</td>	
				<td>${map.t_qq}</td>
				<td>${map.t_dept}</td>
				<td>${map.t_duty}</td>
				<td>${map.t_salary}</td>
				<td>${map.t_card}</td>		
				
								
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
			updateform.action="getTra.action";
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
			myform.action="deleteTra.action";
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
			myform.action="getTraDetails.action";
			myform.submit();
		}else{
			alert("您没有此权限！");
		} 
	}
</script>
</html>
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
<center><h3><font color="red">检索结果</font></h3></center>
	<table class="table"  style="text-align:center; font-size: 7px; border: 1;">

		<tr>
		<thead>
					<tr>
						<th>ID</th>
						<th>姓名</th>
						<th>性别</th>
						<th>年龄</th>
						<th>邮箱</th>
						<th>电话</th>
						<th>客户学历</th>
						<th>是否贷款</th>
						<th>户型</th>
						<th>预算价格</th>
						<th>最大需求</th>
						<th>位置</th>
						<th>意愿度</th>
						<th>维护经纪人</th>
						<th>带看次数</th>
						<th>基本操作</th>
					</tr>
				</thead>
		<c:forEach items="${asslist1}" var="map" varStatus="listStatus">
			<tr class="success" style="margin-top: 2px;">
				<td>${map.a_id}</td>
				<td>${map.a_name}</td>
				<td>${map.a_sex}</td>
				<td>${map.a_age}</td>
				<td>${map.a_email}</td>
				<td>${map.a_phone}</td>
				<td>${map.a_address}</td>
				<td>${map.a_nation}</td>
				<td>${map.a_qq}</td>
				<td>${map.a_dept}</td>
				<td>${map.a_duty}</td>
				<td>${map.a_salary}</td>
				<td>${map.a_card}</td>			
				<td>${map.a_school}</td>
				<td>${map.a_project}</td>
								
				<td>
				
				<button type="button" class="btn btn-info btn-xs" onclick='mydetails(this.parentNode.parentNode)'>详情</button>
				<button type="button" class="btn btn-success btn-xs" onclick='myupdate(this.parentNode.parentNode)'>修改</button>
				<button type="button" class="btn btn-danger btn-xs" onclick='mydelete(this.parentNode.parentNode)'>删除</button>
				</td>
				
			</tr>
		</c:forEach>
	</table>
	
 <form method="post" id="form">
      <div style="visibility:none">
     	 <tr><td><input type="hidden" id="lookId" name="iId"></td></tr>
      </div>
   </form>
   <form method="post" id="updateform">
      <div style="visibility:none">
     	 <tr><td><input type="hidden" id="updateId" name="iId"></td> </tr>
      </div>
   </form>
   <form method="post" id="deleteform">
      <div style="visibility:none">
     	 <tr><td><input type="hidden" id="deleteId" name="deleteId"></td></tr>
      </div>
   </form>
</table>
<div>
	<input type="hidden" id="position" value="<%Map<String,Object> map=new HashMap<String,Object>();
	map=(Map<String,Object>)session.getAttribute("sessionMap");
	out.print(map.get("position")); %>" />
</div>
</body>
<script type="text/javascript">
	function myupdate(row){
		document.getElementById("updateId").value = row.cells[0].innerHTML;
		var position=document.getElementById("position");
		if(position.value=="管理员"){
			var updateform=document.getElementById("updateform"); 
			updateform.action="getAss.action";
			updateform.submit();  
		}else{
			alert("您没有此权限！");
		}          
	}
	
	function mydelete(row){
		document.getElementById("deleteId").value = row.cells[0].innerHTML;
		var position=document.getElementById("position");
		if(position.value=="经理"||position.value=="超级管理员"){
			var myform=document.getElementById("deleteform");
			myform.action="deleteAss.action";
			myform.submit();  
		}else{
			alert("您没有此权限！");
		}    
	}
	
	function mydetails(row){
		document.getElementById("lookId").value = row.cells[0].innerHTML;
		var position=document.getElementById("position");
		if(position.value=="经理"||position.value=="超级管理员"){
			var myform=document.getElementById("form");
			myform.action="getAssDetails.action";
			myform.submit();
		}else{
			alert("您没有此权限！");
		} 
	}
</script>
</html>
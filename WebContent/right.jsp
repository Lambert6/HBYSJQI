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
	<center>
		<h3>
			<font color="red">全部员工</font>
		</h3>
	</center>
	<table class="table"
		style="text-align: center; font-size: 7px; border: 1;">

		<tr>
		<thead>
			<tr>
				<th>ID</th>
				<th>姓名</th>
				<th>年龄</th>
				<th>性别</th>
				<th>邮箱</th>
				<th>电话</th>
				<th>QQ</th>
				<th>住址</th>
				<th>部门</th>
				<th>职位</th>
				<th>工资</th>
				<th>身份证</th>
				<th>民族</th>
				<!-- <th>
							开户行
						</th>
						<th>
							银行卡
						</th> -->
				<th>基本操作</th>
			</tr>
		</thead>
		<c:forEach items="${emplist}" var="map" varStatus="listStatus">
			<tr class="success" style="margin-top: 2px;">
				<td>${map.c_id}</td>
				<td>${map.c_name}</td>
				<td>${map.c_age}</td>
				<td>${map.c_sex}</td>
				<td>${map.c_email}</td>
				<td>${map.c_phone}</td>
				<td>${map.c_qq}</td>
				<td>${map.c_address}</td>
				<td>${map.c_dept}</td>
				<td>${map.c_duty}</td>
				<td>${map.c_salary}</td>
				<td>${map.c_card}</td>
				<td>${map.c_nation}</td>
				<%-- <td>${map.c_bank}</td>
				<td>${map.c_bankid}</td> --%>

				<td>

					<button type="button" class="btn btn-info btn-xs"
						onclick='mydetails(this.parentNode.parentNode)'>详情</button>
					<button type="button" class="btn btn-success btn-xs"
						onclick='myupdate(this.parentNode.parentNode)'>修改</button>
					<button type="button" class="btn btn-danger btn-xs"
						onclick='mydelete(this.parentNode.parentNode)'>删除</button>
				</td>

			</tr>
		</c:forEach>
	</table>
	<strong>
	<center>
		<c:choose>
			<c:when test="${commonPn gt 1}">
				<a href="selectemp.action?pn=${commonPn-1}">上一页</a>
			</c:when>
			<c:otherwise>
                    上一页
         </c:otherwise>
		</c:choose>
		| 第${commonPn }页 |共${commonTotal}页  | 
		<c:choose>
		
			<c:when test="${commonPn lt commonTotal}">
				<a href="selectemp.action?pn=${commonPn+1}">下一页</a>
			</c:when>
			<c:otherwise>
            下一页
        </c:otherwise>
		</c:choose>
	</center>
	</strong>
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
	function myupdate(row) {
		document.getElementById("updateId").value = row.cells[0].innerHTML;
		var position = document.getElementById("position");
		if (position.value == "管理员") {
			var updateform = document.getElementById("updateform");
			updateform.action = "getRow.action";
			updateform.submit();
		} else {
			alert("您没有此权限！");
		}
	}

	function mydelete(row) {
		document.getElementById("deleteId").value = row.cells[0].innerHTML;
		var position = document.getElementById("position");
		if (position.value == "管理员") {
			var myform = document.getElementById("deleteform");
			myform.action = "deleteRow.action";
			myform.submit();
		} else {
			alert("您没有此权限！");
		}
	}

	function mydetails(row) {
		document.getElementById("lookId").value = row.cells[0].innerHTML;
		var position = document.getElementById("position");
		if (position.value == "管理员") {
			var myform = document.getElementById("form");
			myform.action = "getDetails.action";
			myform.submit();
		} else {
			alert("您没有此权限！");
		}
	}
</script>
</html>
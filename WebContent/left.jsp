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
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
	function add() {
		var position = document.getElementById("position");
		var add = document.getElementById("add");
		if (position.value == "管理员") {
			add.href = "addemp.jsp";
		} else {
			alert("您没有此权限！");
		}
	}

	function select() {
		var position = document.getElementById("position");
		var add = document.getElementById("select");
		if (position.value == "管理员" || position.value == "人事专员") {
			add.href = "welcome.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
	function selectproject() {
		var position = document.getElementById("position");
		var add = document.getElementById("selectproject");
		if (position.value == "管理员" || position.value == "人事专员") {
			add.href = "indirect.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
	function selectass() {
		var position = document.getElementById("position");
		var add = document.getElementById("selectass");
		if (position.value == "管理员" || position.value == "人事专员") {
			add.href = "indirect3.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
	function selectdic() {
		var position = document.getElementById("position");
		var add = document.getElementById("selectdic");
		if (position.value == "管理员") {
			add.href = "indirect4.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
	function addproject() {
		var position = document.getElementById("position");
		var add = document.getElementById("addproject");
		if (position.value == "管理员") {
			add.href = "addtra.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
	function addass() {
		var position = document.getElementById("position");
		var add = document.getElementById("addass");
		if (position.value == "管理员") {
			add.href = "addass.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
	function allot() {
		var position = document.getElementById("position");
		var add = document.getElementById("allot");
		if (position.value == "管理员") {
			add.href = "indirect1.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
	function selectprogress() {
		var position = document.getElementById("position");
		var add = document.getElementById("selectprogress");
		if (position.value == "管理员") {
			add.href = "addout.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
	function submitprogress() {
		var position = document.getElementById("position");
		var add = document.getElementById("submitprogress");
		if (position.value == "管理员") {
			add.href = "indirect2.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
	function selectassess() {
		var position = document.getElementById("position");
		var add = document.getElementById("selectassess");
		if (position.value == "管理员") {
			add.href = "indirect3.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
	function insertassess() {
		var position = document.getElementById("position");
		var add = document.getElementById("insertassess");
		if (position.value == "管理员") {
			add.href = "indirect3.jsp";
		} else {
			alert("您没有此权限！");
		}
	}
</script>
</head>
<body style="background-image: url(img/ww.jpg);">

	<br>
	<input type="hidden" id="position"
		value="<%Map<String, Object> map = new HashMap<String, Object>();
			map = (Map<String, Object>) session.getAttribute("sessionMap");
			out.print(map.get("position"));%>" />

	<div class="panel-group" id="panel-339643">
		<div class="panel panel-default">
			<div class="panel-heading">
				<b style="font-size: 15px;">管理菜单</b>
			</div>


		</div>
		<div class="panel panel-default">
			<div class="panel-heading">
				<a class="panel-title" data-toggle="collapse"
					data-parent="#panel-339643" href="#panel-element-1">员工信息</a>
			</div>
			<div id="panel-element-1" class="panel-collapse collapse in">
				<div class="panel-body">
					<a target="rightFrame" href="retemp.jsp">条件检索</a>
				</div>
				<div class="panel-body">
					<a target="rightFrame" id="add" onclick="add()"> 添加员工</a>
				</div>
				<div class="panel-body">
					<a target="rightFrame" id="select" onclick="select()"> 查看员工</a>
				</div>

			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">
				<a class="panel-title" data-toggle="collapse"
					data-parent="#panel-339643" href="#panel-element-2">出租管理</a>
			</div>
			<div id="panel-element-2" class="panel-collapse collapse">
				<div class="panel-body">
					<a target="rightFrame" href="rettra.jsp">条件检索</a>
				</div>
				<div class="panel-body">
					<a target="rightFrame" id="addproject" onclick="addproject()">
						添加房源</a>
				</div>
				<div class="panel-body">
					<a target="rightFrame" id="selectproject" onclick="selectproject()">
						查看房源</a>
				</div>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">
				<a class="panel-title" data-toggle="collapse"
					data-parent="#panel-339643" href="#panel-element-3">出售管理</a>
			</div>
			<div id="panel-element-3" class="panel-collapse collapse">
				<div class="panel-body">
					<a target="rightFrame" href="retout.jsp">条件检索</a>
				</div>
				<div class="panel-body">
					<a target="rightFrame" id="selectprogress"
						onclick="selectprogress()"> 添加房源</a>
				</div>
				<div class="panel-body">
					<a target="rightFrame" id="submitprogress"
						onclick="submitprogress()"> 查看房源</a>
				</div>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">
				<a class="panel-title" data-toggle="collapse"
					data-parent="#panel-339643" href="#panel-element-4">客户管理</a>
			</div>
			<div id="panel-element-4" class="panel-collapse collapse">
				<div class="panel-body">
					<a target="rightFrame" href="retass.jsp">条件检索</a>
				</div>
				<div class="panel-body">
					<a target="rightFrame" id="addass" onclick="addass()"> 添加客户</a>
				</div>
				<div class="panel-body">
					<a target="rightFrame" id="selectass" onclick="selectass()">
						查看客户</a>
				</div>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">
				<a class="panel-title" data-toggle="collapse"
					data-parent="#panel-339643" href="#panel-element-5">数据字典</a>
			</div>
			<div id="panel-element-5" class="panel-collapse collapse">

				<div class="panel-body">
					<a target="rightFrame" id="selectdic" onclick="selectdic()">系统权限</a>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
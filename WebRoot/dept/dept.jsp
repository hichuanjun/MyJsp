<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.test.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>

		<title>Insert title here</title>
		<script>
	function delDept(e) {
		location.href = "manager.jsp?deptno=" + e + "&method=del";
	}
	function add() {
		location.href = "adddept.jsp?method=add";
	}
	function updateDept(e) {
		location.href = "manager.jsp?deptno=" + e + "&method=select";
	}
	function updateDept(e) {
		location.href = "manager.jsp?deptno=" + e + "&method=select";
	}
	function query(){
		var str = document.getElementById("selectStr").value;
		location.href = "manager.jsp?method=query&str="+str;
	}
	function prev(){
		var str = document.getElementById("e1").innerText;
		location.href = "manager.jsp?currentPage="+(parseInt(str)-1);
	}
	function after(){
		var str = document.getElementById("e1").innerText;
		location.href = "manager.jsp?currentPage="+(parseInt(str)+1);
	}
	
</script>
<style>
td {color: red;}
</style>
	</head>
	<body>
		<br /><br /><br /><br />
		<center>
			请输入部门名或其中的一部分：
			<input name="selectStr" id="selectStr" />
			&nbsp;&nbsp;
			<button onclick="query()">查询</button>
			<br /><br />	
			<table>
				<caption>DEPT表</caption>
				<thead>
					<tr>
						<th>部门号</th>
						<th>部门名</th>
						<th>部门所在地</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<Dept> list =(List<Dept>)session.getAttribute("depts");
						for (Dept d : list) {
					%>
					<tr>
						<td><%=d.getDeptno()%></td>
						<td><%=d.getDname()%></td>
						<td><%=d.getLoc()%></td>
						<td>
							<button onclick="delDept('<%=d.getDeptno()%>')">删除</button>
							<button onclick="updateDept('<%=d.getDeptno()%>')">修改</button>
						</td>
					</tr>
					<%}%>
				</tbody>
			</table>
			<button onclick="add()">添加dept</button><br /><br />
			<button onclick="prev()">上一页</button>&nbsp;&nbsp;
				当前页为第[<b id="e1">${currentPage}</b>]页&nbsp;&nbsp;
			<button onclick="after()">下一页</button>
		</center>
	</body>
</html>
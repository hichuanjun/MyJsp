<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.test.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>

		<title>Insert title here</title>
		<script>
	
	function add() {
		location.href = "adddept.jsp?method=add";
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

	//多选修改
	function updateDept(){
		var cbs =	document.getElementsByName("cb");
		for(i=0;i<cbs.length;i++){
			if(cbs[i].checked==true){
				var tds =cbs[i].parentNode.parentNode.childNodes;
				for(j=1;j<tds.length;j++){
					tds[j].childNodes[0].disabled=false;
				}
			}
		}
	}
	function delDepts(){
			var cbs =	document.getElementsByName("cb");
			var array = new Array();
			for(i=0;i<cbs.length;i++){
				if(cbs[i].checked==true){
					array.push(cbs[i].value);
				}
			location.href = "manager.jsp?deptnos=" +array.toString() + "&method=del";
			
		}
		
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
			
		<form action="manager.jsp?method=update" method="post">
			<table border="1">
				<caption>DEPT表</caption>
				<thead>
					<tr>
						<th><input type="checkbox"></th>
						<th>部门号</th>
						<th>部门名</th>
						<th>部门所在地</th>
					
					</tr>
				</thead>
				<tbody>
					<%
						List<Dept> list =(List<Dept>)session.getAttribute("depts");
						for (Dept d : list) {
					%>
					<tr>
						<td><input id="cb" name="cb" type="checkbox" value="<%=d.getDeptno()%>" /></td>
						<td><input id="deptno" name="deptno" value="<%=d.getDeptno()%>" disabled="disabled" /></td>
						<td><input id="dname" name="dname" value="<%=d.getDname()%>" disabled="disabled" /></td>
						<td><input id="loc" name="loc" value="<%=d.getLoc()%>" disabled="disabled" /> </td>
						
					</tr>
					<%}%>
				</tbody>
			</table>
			<button onclick="delDepts()">删除</button>
			<input type="button" onclick="updateDept()" value="批量修改">
			<input type="submit" value="确定修改">
	</form>	
	<button onclick="add()">添加dept</button><br /><br />
	<button onclick="prev()">上一页</button>&nbsp;&nbsp;
	当前页为第[<b id="e1">${currentPage}</b>]页&nbsp;&nbsp;
	<button onclick="after()">下一页</button>
		</center>
	</body>
</html>
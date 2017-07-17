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
	var users=document.getElementsByName("td");
	var loginUser=document.getElementById("loginUser").innerText;
	
			var count=0;
			var val="";
				for(i=0;i<cbs.length;i++){
					if(cbs[i].checked==true){
						val = cbs[i].value;	
						count++;
					}
				}
					if(count>1||count==0){
						alert("选中项不能大于1条或者一条不选");
						return false;
					}else{
					
					for(var i=0;i<users.length;i++){
						if(users[i]==loginUser){
							location.href = "manager.jsp?deptno=" + val + "&method=select";
						}else{
							alert("您沒有操作权限!");
						return false;
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
			<table>
				<caption>DEPT表</caption>
				<thead>
					<tr>
						<th><input type="checkbox"></th>
						<th>部门号</th>
						<th>部门名</th>
						<th>部门所在地</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				欢迎<b id="loginUser" name="loginUser">${loginUser}</b>访问
					<%
						List<Dept> list =(List<Dept>)session.getAttribute("depts");
						for (Dept d : list) {
					
					%>
					
					<tr>
						<td><input id="cb" name="cb" type="checkbox" value="<%=d.getDeptno()%>"></td>
						<td><%=d.getDeptno()%></td>
						<td><%=d.getDname()%></td>
						<td><%=d.getLoc()%></td>
						
					</tr>
					<%}%>
				</tbody>
			</table>
			<button onclick="delDepts()">删除</button>
			<button onclick="updateDept()">修改</button>
			<button onclick="add()">添加dept</button><br /><br />
			<button onclick="prev()">上一页</button>&nbsp;&nbsp;
				当前页为第[<b id="e1">${currentPage}</b>]页&nbsp;&nbsp;
			<button onclick="after()">下一页</button>
		</center>
	</body>
</html>
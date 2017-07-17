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
	var updDnoArray = new Array();
	var NodeArray = new Array();
	//多选修改
	function updateDept(){
		var cbs =	document.getElementsByName("cb");
		
			for(i=0;i<cbs.length;i++){
			if(cbs[i].checked==true){
				updDnoArray.push(cbs[i].value);
				var tds =cbs[i].parentNode.parentNode.childNodes;
				NodeArray.push(tds)
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
	
	function update(){
		var str = "";
		for(i=0;i<NodeArray.length;i++){
			//console.log(NodeArray[i]);
			for(j=0;j<NodeArray[i].length;j++){
				
				
				if(i==NodeArray.length-1&&j==NodeArray[i].length-1){
						str+=NodeArray[i][j].childNodes[0].value
				}else{
					if((j+1)%4==0){
						str+=NodeArray[i][j].childNodes[0].value+"@";
					}else{
						str+=NodeArray[i][j].childNodes[0].value+",";
				}
				}
			}
			
		}
		alert(str);
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
						<td><input  value="<%=d.getDeptno()%>" disabled="disabled" /></td>
						<td><input  value="<%=d.getDname()%>" disabled="disabled" /></td>
						<td><input  value="<%=d.getLoc()%>" disabled="disabled" /> </td>
						
					</tr>
					<%}%>
				</tbody>
			</table>
			<button onclick="delDepts()">删除</button>
			<button onclick="updateDept()">修改</button>
			<button onclick="update()">确定修改</button>
			<button onclick="add()">添加dept</button><br /><br />
			<button onclick="prev()">上一页</button>&nbsp;&nbsp;
				当前页为第[<b id="e1">${currentPage}</b>]页&nbsp;&nbsp;
			<button onclick="after()">下一页</button>
		</center>
	</body>
</html>
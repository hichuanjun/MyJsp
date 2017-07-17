<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="org.test.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>

</script>
<title>Insert title here</title>
</head>
<body>
<center>
<form action="manager.jsp?method=${param.method}" method="post"> 
请输入部门号：<input id="deptno"  name="deptno"  value=${dept.deptno} ><br /><br />
请输入部门名：<input  id="dname" name="dname"  value=${dept.dname} ><br /><br />
请输入部门所在地：<input id="loc" name="loc"  value=${dept.loc} ><br /><br />
<!--  <input type="hidden" id="olddno" name="olddno" value=${olddno} ><br /><br />-->
<input type="submit" id="mysb"  value="提交"/>

</form>
</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.test.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>登陆页面</title>
</head>
<body>
<%Dept dept = new Dept(); 
dept.setLoc("aaaa");
session.setAttribute("dept",dept);
%>

<a href="B.jsp?dept=<%=dept%>">点击传送一个DEPT</a>
<form action = "B.jsp" method="post"> 
请输入姓名<input id="username" name="username">
请输入密码<input id="psd" name="psd">
<input type="submit" value="提交">
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="org.test.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>

 欢迎你：<%= session.getAttribute("usm")%>
</body>
<%=request.getParameter("dept") %>

<%= ((Dept)session.getAttribute("dept")).getLoc()%>
<a href="C.jsp">跳转到C</a>
</html>
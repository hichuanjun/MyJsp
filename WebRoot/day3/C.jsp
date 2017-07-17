<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
if(session.getAttribute("usm")==null){
	 	response.sendRedirect("A.jsp");
	 }
	 %>
<title>Insert title here</title>
</head>
<body>
这是C页面，必须登陆成功才能看到
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>向各层作用域放入数据</title>
</head>
<body>
<%
	String ra =  (String)(request.getAttribute("ra"));
String sa =	 (String)session.getAttribute("sa");
String aa =	(String)application.getAttribute("aa");
 %>
 <font size="6">
	rquest: <%=ra %><br />
 	session: <%=sa %><br />
 	application: <%=aa %><br />
 	</font>
</body>
</html>
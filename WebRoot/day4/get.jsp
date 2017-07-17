<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>向各层作用域放入数据</title>
</head>
<body>
<%
	request.setAttribute("ra","myrequest");
	session.setAttribute("sa","mysession");
	application.setAttribute("aa","myapplication");
 %>
 
 <a href="test.jsp">跳转到下一页面</a><br />
	rquest: <%=request.getAttribute("ra")%><br />
 	session: <%=session.getAttribute("sa") %><br />
 	application: <%=application.getAttribute("aa") %><br />
</body>
</html>
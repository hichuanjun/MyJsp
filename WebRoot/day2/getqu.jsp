<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import ="java.util.*" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%//request.setAttribute("sid","request01");
session.setAttribute("sid","session01"); 
session.setAttribute("sid","session005"); %>
<title>Insert title here</title>
</head>
<body>

<center>

<font size="6">
表达式获取 request是:<%=request.getAttribute("sid")%><br />
表达式获取 session是:<%=session.getAttribute("sid")%><br />
EL表达式   性别是:${sid}
</font>
</center>
</body>
</html>
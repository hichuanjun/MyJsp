<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<font size="5">
request获取
<%=request.getAttribute("rno1") %><br /><br />
session获取
<%=session.getAttribute("sno1") %><br /><br />
sessionID为<%=session.getId() %>
</font>
</body>
</html>
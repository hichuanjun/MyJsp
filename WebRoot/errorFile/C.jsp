<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.test.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
这是C页面
<%List<Dept> list1 = new ArrayList<Dept>();
Dept dept1 = new Dept();
dept1.setDeptno(11);
Dept dept2 = new Dept();
dept2.setDeptno(12);
list1.add(dept1);
list1.add(dept2);
session.setAttribute("list1",list1);
%>


<c:forEach  var="dept" items="${list1}" varStatus="Dept">
${dept.deptno}

</c:forEach>






</body>
</html>
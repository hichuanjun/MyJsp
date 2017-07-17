<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>登陆页面</title>
</head>
<body>

<p>这是A页面</p>

<jsp:useBean id="dept" class="org.test.Dept" scope="application" />
<jsp:setProperty name="dept"  property="deptno"  value="14" /> 
<jsp:setProperty name="dept"  property="dname"  value="salss" /> 
<jsp:setProperty name="dept"  property="loc"  value="nanjing" /> 

LOC的值为<jsp:getProperty name="dept"  property="loc" />
${dept.loc}
<%=((org.test.Dept)application.getAttribute("dept")).getLoc()%>
</body>
</html>
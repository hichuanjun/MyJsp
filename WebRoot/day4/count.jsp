<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<%
	//如果满足此判断，说明访客是第一位访问者
	if(application.getAttribute("count")==null){
		application.setAttribute("count",1);
	}else{
		if(session.isNew()){
			Integer temp =(Integer)application.getAttribute("count");
			temp++;
			application.setAttribute("count",temp);
		}
	}


 %>
 	<font size="6">
	你是第<%= application.getAttribute("count")%>位访问者
	</font>
</body>
</html>
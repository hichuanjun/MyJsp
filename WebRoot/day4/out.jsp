<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%	

	
	
	out.print("<title>新的html\r\n");
	out.print("</title>\r\n");
	out.print("<script>\r\n");
	out.print("function show(e){\r\n");
	out.print("alert(e.innerText);\r\n");
	out.print("}\r\n");
	out.print("</script>\r\n");
	
	out.print("<body>\r\n");
	out.print("<p id=\"p1\" onclick=\"show(this)\">fdfdfdfdfdf\r\n");
	out.print("</p>\r\n");
	out.print("<a href=\"count.jsp\">跳转到count.jsp\r\n");
	out.print("</a>\r\n");
	out.print("</body>\r\n");

	
 %>

</head>

</html>
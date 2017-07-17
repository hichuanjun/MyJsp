<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>login</title>
<script type="text/javascript">
function login(){
var loginUser=document.getElementById("loginUser").value;
location.href="manager.jsp?loginUser="+loginUser+"&method=queryAll"
}
</script>
</head>
<body>
输入部门名称:<input id="loginUser" name="loginUser" type="text" />
<button onclick="login()">进入Dept展示页面</button>
</body>
</html>
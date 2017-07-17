<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
<script>
//function change(){
	//val= document.getElementById("in1").value;
	//document.getElementById("a1").href="getqu.jsp?in1="+val;
//}
function mysub(){
	val= document.getElementById("in1").value;
	location.href="getqu.jsp?in1="+val+"&in1=in1";
}
</script></head>
<body>
<form action="getqu.jsp" method="get">

性别:
男<input type="radio" id="sex" name="sex" value="man"/>&nbsp;
女<input type="radio" id="sex" name="sex" value="women"/>
<input type="submit"  value="提交"/>


</form>





</body>
</html>
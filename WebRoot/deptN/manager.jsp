<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.test.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>

		<title>Insert title here</title>
	</head>
	<body>
	
	
	
		<%
			
			String method = request.getParameter("method");
			String str = request.getParameter("deptno");
			int deptno =0;
				if(str!=null){
					deptno = Integer.parseInt(str);
				}
			Test test = new Test();
			
			if ("del".equals(method)) {
				String arrayStr = request.getParameter("deptnos");
				String[] array = arrayStr.split(",");
				for(String d:array){
				int dno = Integer.parseInt(d); 
				test.delDeptByDeptno(dno);
				}
			}else if ("add".equals(method)) {
				String dname = request.getParameter("dname");
				String loc = request.getParameter("loc");
				Dept dept = new Dept();
				dept.setDeptno(deptno);
				dept.setDname(dname);
				dept.setLoc(loc);
				test.addDept(dept);
			}else if("update".equals(method)){
				
				String cbs[] = request.getParameterValues("cb"); 
				String deptnos[] = request.getParameterValues("deptno"); 
				String dnames[] = request.getParameterValues("dname"); 
				String locs[] = request.getParameterValues("loc"); 
				for(int i=0;i<cbs.length;i++){
					Dept dept = new Dept();
					dept.setDeptno(Integer.parseInt(deptnos[i]));
					dept.setDname(dnames[i]);
					dept.setLoc(locs[i]);
					test.updateDeptById(dept,Integer.parseInt(cbs[i]));
					
				}
				
			}
				
				List<Dept> list = null;
				String temp = request.getParameter("str");
			 if("query".equals(method)&&temp!=null&&!temp.equals("")){
				
					list =  test.queryDeptLikeDname(temp);
				}else{
					list = test.getDept();
				}
			String currentPageStr = request.getParameter("currentPage");
			if(currentPageStr==null){
				currentPageStr="1";
			}
			
			int currentPage  = Integer.parseInt(currentPageStr);
			int count = 5;
			if(currentPage<1){
				currentPage=1;
			}else if(currentPage>=Math.ceil((list.size()+0.0)/count)){
			
			currentPage =new Double(Math.ceil((list.size()+0.0)/count)).intValue();
			}
			list = test.queryDeptByPage(list,currentPage,count);
			session.setAttribute("depts",list);
			session.setAttribute("currentPage",currentPage);
			response.sendRedirect("dept.jsp");
		%>


	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.test.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>

		<title>manager</title>
	</head>
	<body>
		<%
			String method = request.getParameter("method");
			String str = request.getParameter("deptno");
			String loginUser=request.getParameter("loginUser");
			session.setAttribute("loginUser", loginUser);
			int deptno =0;
				if(str!=null){
					deptno = Integer.parseInt(str);
				}
			Test test = new Test();
			
			if ("del".equals(method)) {		//删除
				String arrayStr = request.getParameter("deptnos");
				String[] array = arrayStr.split(",");
				for(String d:array){
				int dno = Integer.parseInt(d); 
				test.delDeptByDeptno(dno);
				}
			}else if("select".equals(method)){//修改dept之前的查询
				Dept dept  = new Test().queryDeptByDeptno(deptno);
				session.setAttribute("dept",dept);
				session.setAttribute("olddno",deptno);
				
				response.sendRedirect("adddept.jsp?method=update");
				return;
			}else if ("add".equals(method)||"update".equals(method)) {		//添加和修改
				String dname = request.getParameter("dname");
				String loc = request.getParameter("loc");
				Dept dept = new Dept();
				dept.setDeptno(deptno);
				dept.setDname(dname);
				dept.setLoc(loc);
				
				if("add".equals(method)){
					test.addDept(dept);}
				else{
						test.updateDeptById(dept,(Integer)session.getAttribute("olddno"));
						session.removeAttribute("dept");
				}
			}
				List<Dept> list = null;
				String temp = request.getParameter("str");
			 if("query".equals(method)&&temp!=null&&!temp.equals("")){		
				//模糊查询
					list =  test.queryDeptLikeDname(temp);
				}else{
				//查询全部
					list = test.getDept();
					session.setAttribute("list", list);
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
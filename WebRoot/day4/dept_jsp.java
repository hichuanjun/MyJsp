package org.apache.jsp.day1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.test.*;
import java.util.*;

public final class dept_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\r\n");
      out.write("\t\t<title>Insert title here</title>\r\n");
      out.write("<script>\r\n");
      out.write("function delDept(e){\r\n");
      out.write("\tlocation.href=\"manager.jsp?deptno=\"+e+\"&method=del\";\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function add(){\r\n");
      out.write("\tlocation.href=\"adddept.jsp?method=add\";\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function updateDept(e){\r\n");
      out.write("\tlocation.href=\"manager.jsp?deptno=\"+e+\"&method=select\";\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<style>\r\n");
      out.write("td {\r\n");
      out.write("\tcolor: red;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\r\n");
      out.write("\t\t<center>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<table>\r\n");
      out.write("\t\t\t\t<caption>\r\n");
      out.write("\t\t\t\t\tDEPT表\r\n");
      out.write("\t\t\t\t</caption>\r\n");
      out.write("\t\t\t\t<thead>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<th>\r\n");
      out.write("\t\t\t\t\t\t\t部门号\r\n");
      out.write("\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t<th>\r\n");
      out.write("\t\t\t\t\t\t\t部门名\r\n");
      out.write("\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t<th>\r\n");
      out.write("\t\t\t\t\t\t\t部门所在地\r\n");
      out.write("\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t\t<th>\r\n");
      out.write("\t\t\t\t\t\t\t操作\r\n");
      out.write("\t\t\t\t\t\t</th>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</thead>\r\n");
      out.write("\t\t\t\t<tbody>\r\n");
      out.write("\t\t\t\t\t");

						List<Dept> list = null;
						//new Test().getDept();
						for (Dept d : list) {
					
      out.write("\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(d.getDeptno());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(d.getDname());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(d.getLoc());
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t<!--  <a href=\"manager.jsp?deptno=");
      out.print(d.getDeptno());
      out.write("\">删除</a>-->\r\n");
      out.write("\t\t\t\t\t\t\t<button onclick=\"delDept('");
      out.print(d.getDeptno());
      out.write("')\">删除</button>\r\n");
      out.write("\t\t\t\t\t\t\t<button onclick=\"updateDept('");
      out.print(d.getDeptno());
      out.write("')\">修改</button>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t");

						}
					
      out.write("\r\n");
      out.write("\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<button onclick=\"add()\">添加dept</button>\r\n");
      out.write("\t\t</center>\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

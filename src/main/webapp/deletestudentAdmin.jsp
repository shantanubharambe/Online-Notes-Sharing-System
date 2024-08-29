<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="org.model.*" %>
  <%@page import="org.Service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id").trim());
CourseModel cm=new CourseModel();
cm.setId(id);
CourseService cs=new CourseServiceImp();
boolean b=cs.studentDelete(id);
if(b)
{
	  response.sendRedirect("viewStudentdata.jsp");
}
else
{
	  response.sendRedirect("viewStudentdata.jsp");
}
%>
</body>
</html>
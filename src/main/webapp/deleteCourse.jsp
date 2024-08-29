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
  boolean b=cs.courseDelete(cm);
  if(b)
  {
	  response.sendRedirect("viewcourses.jsp");
  }
  else
  {
	  response.sendRedirect("viewcourses.jsp");
  }
%>
</body>
</html>
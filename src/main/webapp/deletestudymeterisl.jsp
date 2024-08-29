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
       String name=request.getParameter("fn");
       CourseService cs=new CourseServiceImp(); 
       boolean b=cs.deletestudymeterial(name);
       if(b)
       {
       	  response.sendRedirect("viewstudymeterialAdmin.jsp");
       }
       else
       {
       	  response.sendRedirect("viewstudymeterialAdmin.jsp");
       }

%>
</body>
</html>
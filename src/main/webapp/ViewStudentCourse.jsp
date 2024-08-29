<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection.*" %>
        <%@page import="org.model.*" %>
            <%@page import="org.Service.*" %>
              <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="owncss/studentcss.css">
</head>
<body class="viewstudent">
<jsp:include page="studentmaster.jsp"></jsp:include>
 <br><br>
<%
String id=(String)session.getAttribute("studid");
  RegisterModel rs=new RegisterModel();
  CourseService cr=new CourseServiceImp();
  List <RegisterModel>list;
  list=cr.Studentdata(id);
  for(RegisterModel r:list)
  {
	%>
	   <table class="table">
  <thead>
    <tr>
      <th scope="col">Course Name</th>
      <th scope="col">Student Name</th>
      <th scope="col">Stduent Email</th>
      <th scope="col">Student Contact</th>
      <th scope="col">UserName</th>
      <th scope="col">Password</th>
     
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><%=r.getCoursename() %></td>
      <td><%=r.getName() %></td>
      <td><%=r.getEmail()%></td>
      <td><%=r.getContact() %></td>
      <td><%=r.getUsername()%></td>
      <td><%=r.getPassword()%></td>
    </tr>
  
  </tbody>
</table>
	<%
	
  }
 
%>
	<script src="js/bootstrap.js"></script>
</body>
</html>
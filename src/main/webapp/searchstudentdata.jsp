<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.Service.*"%>
    <%@ page import="org.model.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
  <div id="sdata">
  <table class="table">
  <thead>
    <tr>
      <th scope="col">Course Name</th>
      <th scope="col">Student Name</th>
      <th scope="col">Stduent Email</th>
      <th scope="col">Student Contact</th>
      <th scope="col">UserName</th>
      <th scope="col">Password</th>
      <th scope="col">Delete</th> 
    </tr>
  </thead>
<%
 String name=request.getParameter("sname");
 List <RegisterModel> list;
 CourseService s=new CourseServiceImp();
 list=s.Studentdatasearch(name); 
  for(RegisterModel r:list)
  {
	%>
	
  <tbody>
    
    <tr>
      <td><%=r.getCoursename() %></td>
      <td><%=r.getName() %></td>
      <td><%=r.getEmail()%></td>
      <td><%=r.getContact() %></td>
      <td><%=r.getUsername()%></td>
      <td><%=r.getPassword()%></td>
        <td><a href="deletestudentAdmin.jsp?id=<%= r.getId()%>">DELETE</a></td>
    </tr>
  </tbody>
	<%
  	
  }
 
%>
  </table>
    </div>
 
  <script src="js/bootstrap.js"></script>


</body>
</html>
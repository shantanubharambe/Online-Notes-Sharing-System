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
<link rel="stylesheet" href="owncss/logincss.css">
<script src="js/searchstudent.js"></script>
<style>
ul li a{
	color:white;
	font-weight: 900;
	font-size: 25px;
}
</style>
</head>
<body class="adminmaster">
<jsp:include page="master.jsp"></jsp:include>
 <br><br>
 
  <input class="form-control mr-sm-2 m-3" 	 style="height: 60px" type="search" placeholder="Search" aria-label="Search" onkeyup="callAxax(this.value)">
<%

  RegisterModel rs=new RegisterModel();
  CourseService cr=new CourseServiceImp();
  List <RegisterModel>list;
  list=cr.viewStudentdata();
  %>
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
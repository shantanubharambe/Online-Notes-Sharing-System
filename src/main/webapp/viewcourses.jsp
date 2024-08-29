<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.model.*"%>
    <%@page import="java.util.*"%>
	<%@page import="org.Service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="owncss/logincss.css">
</head>
<body>
  <jsp:include page="master.jsp"></jsp:include>
<%

List <CourseModel> list;
CourseService cs=new CourseServiceImp();
list=cs.getAllCourse();
%>
<table class="table table-striped">
 <tr><th>Course ID</th><th>Course Name</th><th>Delete</th><th>Update</th></tr>

<%
for(CourseModel c:list)
{
	%>
	
	   <tr>
	      <td><%=c.getId() %></td>
	      <td><%=c.getCname() %></td>
	      <td><a href="deleteCourse.jsp?id=<%=c.getId()%>">DELETE</a></td>
	      <td><a href="update.jsp?id=<%=c.getId()%>&name=<%=c.getCname()%>">Update</a></td>
	   </tr>
	<%

	}
%>
</table>

</body>
</html>
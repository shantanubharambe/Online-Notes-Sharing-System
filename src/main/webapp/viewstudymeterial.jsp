<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.Connection.*" %>
        <%@page import="org.model.*" %>
            <%@page import="org.Service.*" %>
              <%@page import="java.util.*" %>
               <%@page import="com.servlet.*" %>
                 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<link rel="stylesheet" href="owncss/studentcss.css">
</head>
</head>
<body class="viewstudent2">
 <jsp:include page="studentmaster.jsp"></jsp:include>
 <br><br>
		<table class="table mt-4">
			<thead>
				<tr>
					<th scope="col">Image</th>
					<th scope="col">Download</th>	
					<th scope="col">Ramark</th>

				</tr>
			</thead>
			<tbody>

				<%
				Connection conn = DbConnect.getConn();

				PreparedStatement ps = conn.prepareStatement("select * from img_details");
				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
				%>
				<tr>

					<%
					if (rs.getString("img_name").endsWith(".pdf")) {
					%>

					<th scope="row"><img alt="" src="imgs/pdf.png" width="200px"
						height="100px"></th>
					<td>
				           <a href="download?fn=<%=rs.getString("img_name")%>" class="btn btn-sm btn-primary">Download</a>	
					</td>


					<%
					} else if (rs.getString("img_name").endsWith(".xlsx")) {
					%>

					<th scope="row"><img alt="" src="imgs/xls.jpg" width="200px"
						height="100px"></th>

                         <td>
				           <a href="download?fn=<%=rs.getString("img_name")%>" class="btn btn-sm btn-primary">Download</a>	
					</td>
					<%
					} else {
					%>
					<th scope="row"><img alt=""
						src="imgs/<%=rs.getString("img_name")%>" width="200px"
						height="100px"></th>
					<td>
				            <a href="download?fn=<%=rs.getString("img_name")%>" class="btn btn-sm btn-primary">Download</a>	
					</td>
					<%
					}
					%>
                     		<td><%=rs.getString("remark")%></td>
                 
				</tr>
				<%
				}
				%>



			</tbody>
		</table>
		
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.Service.*" %>
    <%@ page import="org.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="owncss/style.css">
</head>
<body>

   <jsp:include page="master.jsp"></jsp:include>

<%
 int id=Integer.parseInt(request.getParameter("id"));
 String cname=request.getParameter("name");		

 
   %>	
<div class="container addcontainer  mt-5">
		<div class="card registerbody " style="width: 35rem;">
			<div class="card-body">
			
			<form name="frm" action="updateFinal.jsp" method="POST">
			    <div class="form-group">
					<h2 class="font-weight-bold">Update Course Details</h2>
					<hr>
				</div>
				<div class="form-group">
					<input type='hidden' name="idd"  class="form-control" value='<%=id%>'/>
				</div>
				<div class="form-group">
					<input type='text' name="ccname" class="form-control" value="<%=cname%>"  />
				</div>	
				<div class="form-group">
					<input type='submit' name="s" class="form-control bg-primary "value="update Course" />
				</div>
				
             </form>
            
			</div>
		  </div>
		</div>

	<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
			integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
			integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
			crossorigin="anonymous"></script>
		<script src="js/bootstrap.js"></script>

</body>
</html>
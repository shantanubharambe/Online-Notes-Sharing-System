<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="org.model.*"%>
	<%@page import="org.Service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="owncss/logincss2.css">
<link rel="stylesheet" href="css/bootstrap.css">
<style>
body{
height:700px;

}
ul li a{
	color:white;
	font-weight: 900;
	font-size: 25px;
}
</style>
</head>
<body class="adminmaster" >
<jsp:include page="master.jsp"></jsp:include>

	<div class="container addcontainer  mt-5" >
		<div class="card registerbody " style="width: 40rem; ">
			<div class="card-body">
			
			<form name="frm" action="" method="POST">
			<div class="form-group">
					<h2 class="font-weight-bold">Add New Course</h2>
					<hr>
				</div>
				<div class="form-group">
					<input type='text' name="cname" value="" class="form-control" placeholder="Enter Name" />
				</div>
				<div class="form-group">
					<input type='submit' name="s" class="form-control bg-primary "value="Add Course" />
				</div>
				
              </form>
              <%
       	   String btn=request.getParameter("s");
              if(btn!=null){
       	          String cname=request.getParameter("cname");
       	            CourseModel model=new CourseModel();
       	            model.setCname(cname);
       	            CourseService cser=new CourseServiceImp();
       	           boolean b=cser.isAddCourse(model);
       	        
       	           if(b){
       	        	 %>
       	        	 <div class="form-group">
					     <span class="form-control">Successfully Added</span>
					</div>
       	        	  <%
       	        	   
       	           }
       	           else{
       	        	 %>
       	        	 <div class="form-group">
					     <span class="form-control">Some Problem</span>
					</div>
       	        	  <%
       	        	   
       	           }
              }
              %>
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
		
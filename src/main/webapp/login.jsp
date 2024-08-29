<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="org.model.*" %>
		<%@ page import="org.Service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="owncss/logincss.css">
</head>
<body class="adminmastermaster">
  <jsp:include page="adminstudentnavbar.jsp"></jsp:include>
  
	<div class="container containersize mt-5">
		<div class="card logincontainer" style="width: 28rem;">
			<div class="card-body">
		        <form name="frm" action="" method="POST">
				    <div class="form-group">
				    	<input type='text' name="user" value="" class="form-control" placeholder="Enter UserName" />
				    </div>
				    <div class="form-group">
					    <input type='password' name="pass" value="" class="form-control" placeholder="Enter Password" />
				    </div>
				    <div class="form-group">
					   <input type='submit' name="s" class="form-control" value="Login here" />
				    </div>
				     <div class="form-group">
				         <a href="register.jsp" class="btn btn-primary form-control btn-outline=danger">Registration here</a>
				     </div>
				      
			   </form>
			  
			
 <%
   String btn=request.getParameter("s");

   if(btn!=null){
	    String username=request.getParameter("user");
	    String password=request.getParameter("pass");
	    RegisterModel r=new RegisterModel();
	    r.setUsername(username);
	    r.setPassword(password);
	    
	    CourseService cs=new CourseServiceImp();
	    String id=cs.Studentvalidate(r);
		
	    if(id!=null){
            
	            session.setAttribute("studid", id);
	    	    response.sendRedirect("studentmaster.jsp");
	    }
	    else
	    {
	   %>
	     <div class="form-group">
	        <span class="form-control bg-danger text-white">Wrong username And Passsword</span>
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
	
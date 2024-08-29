<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="org.Service.*" %>
		<%@ page import="org.model.*" %>
				<%@ page import="java.util.*" %>
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
	<div class="container registercontainer  mt-5">
		<div class="card registerbody v2 " style="width: 35rem;">
			<div class="card-body  ">
			<form name="frm" action="" method="POST">
				<div class="form-group">
					<input type='text' name="name" value="" class="form-control" placeholder="Enter Name" />
				</div>
				<div class="form-group">
					<input type='email' name="email" value="" class="form-control" placeholder="Enter Email" />
				</div>
				<div class="form-group">
					<input type='text' name="contact" value="" class="form-control" placeholder="Enter contact" />
				</div>
				<div class="form-group">
					<input type='text' name="password" value="" class="form-control" placeholder="Enter Password" />
				</div>	
				<div class="form-group">
			 		<input type='text' name="username" value="" class="form-control" placeholder="Enter username" />
				</div>
				<div class="form-group">
					<select class="form-control mt-2" name="courseid">
					   <%
					   List <CourseModel> list;
					   CourseService cs=new CourseServiceImp();
					   list=cs.getAllCourse();
					   for(CourseModel c:list)
					   {
						%>
						<option value="<%=c.getId()%>"><%=c.getCname() %></option>
						<%    
					   }
					   
					   %>	 
					</select>
				</div>
				<div class="form-group">
					<input type='submit' name="s" class="form-control bg-primary "value="Register here" />
				</div>
				
              </form>
              
                <%
                String btn=request.getParameter("s");	
                
                if(btn!=null)
                {
                String cname=request.getParameter("name");	
                String email=request.getParameter("email");	
                String contact=request.getParameter("contact");	
                String password=request.getParameter("password");	
                String username=request.getParameter("username");	
                int id=Integer.parseInt(request.getParameter("courseid"));


                RegisterModel rmodel=new RegisterModel();
                rmodel.setEmail(email);
                rmodel.setName(cname);
                rmodel.setContact(contact);
                rmodel.setUsername(username);
                rmodel.setPassword(password);
                rmodel.setId(id);
                CourseService cr=new CourseServiceImp();
                boolean b=cr.isAddStudent(rmodel);
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
		
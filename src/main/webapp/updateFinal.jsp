<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.model.*" %>
     <%@ page import="org.Service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	 <%	
      	   String btn=request.getParameter("s");
             if(btn!=null){
            	 int idd=Integer.parseInt(request.getParameter("idd"));
      	         String namee=request.getParameter("ccname");
      	    
      	       
      	        CourseService cs=new CourseServiceImp();
      	        CourseModel cm=new CourseModel();
      	        cm.setId(idd);
      	        cm.setCname(namee);
      	        
      	        boolean b=cs.updateCourse(cm);
      	      
      	           if(b){
      	        	response.sendRedirect("viewcourses.jsp");
      	        	   
      	           }
      	           else{
      	        	   
      	        	   response.sendRedirect("update.jsp");
      	        	   
      	        	
      	           }
             }
             %>
</body>
</html>
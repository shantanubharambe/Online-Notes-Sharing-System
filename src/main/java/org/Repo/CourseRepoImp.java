package org.Repo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.model.CourseModel;
import org.model.RegisterModel;

public class CourseRepoImp implements CourseRepo{

   private Connection conn;
   private PreparedStatement stmt;
   private ResultSet rs;
   List <CourseModel> list;
   List <RegisterModel>list1;
   public CourseRepoImp() throws SQLException {
   try
   {
		Class.forName("com.mysql.cj.jdbc.Driver");
	    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudyApp","root","Shantanu");
	}
   catch(ClassNotFoundException e) 
    {
		System.out.println("error");
	}
   }
	@Override
	public boolean isAddCourse(CourseModel model) {
		try {
			stmt=conn.prepareStatement("insert into AddCourse values(0,?)");
			stmt.setString(1, model.getCname());
			int val=stmt.executeUpdate();
			if(val>0) {
				return true;
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return false;
	}
	@Override
	public List<CourseModel> getAllCourse() {

         try
         {
        	stmt= conn.prepareStatement("select *from addcourse");
        	 rs=stmt.executeQuery();
        	 list=new ArrayList<CourseModel>();
        	 while(rs.next())
        	 {
        	    CourseModel cm=new CourseModel();
        	    
        		 cm.setId(rs.getInt(1));
        		cm.setCname(rs.getString(2));
        		list.add(cm);
        		
        		 
        	 }
        	 
         }
         catch(Exception e)
         {
        	 System.out.println(e);
         }
		
		
		return list;
	}
	@Override
	public boolean courseDelete(CourseModel model) {
		try {
			stmt=conn.prepareStatement("delete from addcourse where id=?");
			stmt.setInt(1, model.getId());
			int val=stmt.executeUpdate();
			if(val>0) {
				return true;
			}
			else
			{
				return false;
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return false;
		
		
	
	}
	@Override
	public boolean updateCourse(CourseModel model) {
		
		try {
			stmt=conn.prepareStatement("update addcourse set coursename=? where id=?");
			stmt.setString(1, model.getCname());
			stmt.setInt(2, model.getId());
			int val=stmt.executeUpdate();
			if(val>0) {
				return true;
			}
			else
			{
				return false;
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return false;
		
		
	
	}
	@Override
	public boolean isAddStudent(RegisterModel model) {
		try 
		{
			stmt=conn.prepareStatement("insert into student values("+0+",?,?,?,?,?,?)");
			stmt.setString(1,model.getName());
			stmt.setString(2,model.getContact());
			stmt.setString(3,model.getEmail());
			stmt.setString(4,model.getUsername());
			stmt.setString(5,model.getPassword());
			stmt.setInt(6,model.getId());
			int val=stmt.executeUpdate();
			if(val>0)
			{
				return true;
			}
			else
			{
				return false;
			}
				
			
		}
		catch(Exception r) {
			System.out.println(r);
		}
		return false;
	}
	@Override
	public String Studentvalidate(RegisterModel model) {
		try
        {
			
       	stmt= conn.prepareStatement("select *from student where username=? and password=?");
       	stmt.setString(1, model.getUsername());
     	stmt.setString(2, model.getPassword());
       	 rs=stmt.executeQuery();
       	 
       	 while(rs.next())
       	 {
            
       	 return rs.getString("contact");
       		 
       	 }
       
        }
        catch(Exception e)
        {
       	 System.out.println(e);
       	 return null;
        }
		return null;
		
	}
	@Override
	public List Studentdata(String id) {
		{
			try
			{
			stmt=conn.prepareStatement("SELECT a.coursename, s.name,s.email,s.contact,s.username,s.password FROM addcourse a INNER JOIN student s ON a.id = s.id where s.contact=?");
		    stmt.setString(1, id);
			rs=stmt.executeQuery();
		    list1=new ArrayList<RegisterModel>();
		    while(rs.next())
		    {
		    	RegisterModel m=new RegisterModel();
		       m.setCoursename(rs.getString("coursename"));
		       m.setName(rs.getString("name"));
		       m.setEmail(rs.getString("email"));
		       m.setContact(rs.getString("contact"));
		       m.setUsername(rs.getString("username"));
		       m.setPassword(rs.getString("password"));
		       list1.add(m);
		       
		    }
		    
			}

		catch(Exception r) {
			System.out.println(r);
		}
			 return list1;
	}
	}
	@Override
	public List viewStudentdata() {
		try
		{
		stmt=conn.prepareStatement("SELECT s.sid,a.coursename, s.name,s.email,s.contact,s.username,s.password FROM addcourse a INNER JOIN student s ON a.id = s.id");
		rs=stmt.executeQuery();
	    list1=new ArrayList<RegisterModel>();
	    while(rs.next())
	    {
	    	RegisterModel m=new RegisterModel();
	       m.setId(rs.getInt("sid"));
	       m.setCoursename(rs.getString("coursename"));
	       m.setName(rs.getString("name"));
	       m.setEmail(rs.getString("email"));
	       m.setContact(rs.getString("contact"));
	       m.setUsername(rs.getString("username"));
	       m.setPassword(rs.getString("password"));
	       list1.add(m);
	       
	    }
	    
		}

	catch(Exception r) {
		System.out.println(r);
	}
		 return list1;
	}
	@Override
	public boolean studentDelete(int id) {
		try {
			stmt=conn.prepareStatement("delete from student where sid=?");
			stmt.setInt(1, id);
			int val=stmt.executeUpdate();
			if(val>0) {
				return true;
			}
			else
			{
				return false;
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return false;
		
	
	}
	@Override
	public boolean deletestudymeterial(String fname) {
		try {
			stmt=conn.prepareStatement("delete from img_details where img_name=?");
			stmt.setString(1, fname);
			int val=stmt.executeUpdate();
			if(val>0) {
				return true;
			}
			else
			{
				return false;
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return false;

	}
	@Override
	public List Studentdatasearch(String name) {
		try
		{
		stmt=conn.prepareStatement("SELECT s.sid,a.coursename, s.name,s.email,s.contact,s.username,s.password FROM addcourse a INNER JOIN student s ON a.id = s.id where name like '%"+name+"%'");
		rs=stmt.executeQuery();
	    list1=new ArrayList<RegisterModel>();
	    while(rs.next())
	    {
	    	RegisterModel mm=new RegisterModel();
	       mm.setId(rs.getInt("sid"));
	       mm.setCoursename(rs.getString("coursename"));
	       mm.setName(rs.getString("name"));
	       mm.setEmail(rs.getString("email"));
	       mm.setContact(rs.getString("contact"));
	       mm.setUsername(rs.getString("username"));
	       mm.setPassword(rs.getString("password"));
	       list1.add( mm);
	       
	    }
	    
		}

	catch(Exception r) {
		System.out.println(r);
	}
		 return list1;
	}
	}


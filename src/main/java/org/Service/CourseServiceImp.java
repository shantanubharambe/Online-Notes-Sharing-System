package org.Service;
import org.Repo.*;
import java.sql.SQLException;
import java.util.List;

import org.Repo.CourseRepo;
import org.Repo.CourseRepoImp;
import org.model.CourseModel;
import org.model.RegisterModel;

public class CourseServiceImp implements CourseService  {

	@Override
	public boolean isAddCourse(CourseModel model) throws SQLException {
	
      CourseRepo crepo=new CourseRepoImp();
      boolean b=crepo.isAddCourse(model);
      return b;
	
	}

	@Override
	public List<CourseModel> getAllCourse() throws SQLException {
		  CourseRepo crepo2=new CourseRepoImp();
		return crepo2.getAllCourse();
	}

	@Override
	public boolean courseDelete(CourseModel model) throws SQLException {
		CourseRepo crepo3=new CourseRepoImp();
		boolean b=crepo3.courseDelete(model);
		return b;
	}

	@Override
	public boolean updateCourse(CourseModel model) throws SQLException {
		CourseRepo crepo4=new CourseRepoImp();
		boolean b=crepo4.updateCourse(model);
		return b;
	}

	@Override
	public boolean isAddStudent(RegisterModel model) throws SQLException {
		CourseRepo crepo5=new CourseRepoImp();        
		return crepo5.isAddStudent(model);
	       
	}

	@Override
	public String Studentvalidate(RegisterModel model) throws SQLException {
		CourseRepo crepo6=new CourseRepoImp();        
		return crepo6.Studentvalidate(model);
	}

	@Override
	public List Studentdata(String id) throws SQLException {
		  CourseRepo crepo7=new CourseRepoImp();
			return crepo7.Studentdata(id);
	}

	@Override
	public List viewStudentdata() throws SQLException {
		CourseRepo crepo8=new CourseRepoImp();
		return crepo8.viewStudentdata();
	}

	@Override
	public boolean studentDelete(int id) throws SQLException {
		CourseRepo crepo9=new CourseRepoImp();
		return crepo9.studentDelete(id);
		
	}

	@Override
	public boolean deletestudymeterial(String fname) throws SQLException {
		CourseRepo crepo10=new CourseRepoImp();
		return crepo10.deletestudymeterial(fname);
	}

	@Override
	public List Studentdatasearch(String name) throws SQLException {
		  CourseRepo crepo11=new CourseRepoImp();
				return crepo11.Studentdatasearch(name);
	}

}

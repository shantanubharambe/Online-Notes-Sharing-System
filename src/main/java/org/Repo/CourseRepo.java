package org.Repo;

import java.util.List;

import org.model.CourseModel;
import org.model.RegisterModel;

public interface CourseRepo {
     public boolean isAddCourse(CourseModel model);
     public List<CourseModel> getAllCourse();
     public boolean courseDelete(CourseModel model);
     public boolean updateCourse(CourseModel model);
     public boolean isAddStudent(RegisterModel model);
 	public String Studentvalidate(RegisterModel model);
 	public List Studentdata(String id);
 	public List viewStudentdata();
 	public boolean studentDelete(int id);
 	public boolean deletestudymeterial(String fname);
 	public List Studentdatasearch(String name);
}

package org.Service;

import java.sql.SQLException;
import java.util.List;

import org.model.CourseModel;
import org.model.RegisterModel;

public interface CourseService {
public boolean isAddCourse(CourseModel model) throws SQLException;
public List<CourseModel> getAllCourse() throws SQLException;
public boolean courseDelete(CourseModel model)throws SQLException;
public boolean updateCourse(CourseModel model)throws SQLException;
public boolean isAddStudent(RegisterModel model) throws SQLException;
public String Studentvalidate(RegisterModel model) throws SQLException;
public List Studentdata(String id) throws SQLException;
public List viewStudentdata() throws SQLException;
public boolean studentDelete(int id)throws SQLException;
public boolean deletestudymeterial(String fname) throws SQLException;
public List Studentdatasearch(String name) throws SQLException;
}

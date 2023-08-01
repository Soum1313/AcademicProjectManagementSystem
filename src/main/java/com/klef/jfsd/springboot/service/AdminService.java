package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService 
{
	public Student addstudent(Student student);
	public Faculty addfaculty(Faculty faculty);
	public Admin checkadminlogin(String auname,String apwd);
	public List<Faculty> viewallfaculty();
	public void deletefaculty(int fid);
	public Faculty viewfacultybyid(int fid);
	public List<Student> viewallstudents();
	public void deletestudent(int sid);
	public Student viewstudentbyid(int sid);
	public List<Faculty> viewallfacultysorted();
	public void changestudentLead(int stuid);
	public int getProjectCount();
	public int getFacultyCount();
	public int getOngoingProjectCount();
	public int getStudentCount();
	public int getProjectCompletedCount();
	public List<Project> getTopPerformingProjects();
	public int getAllocatedFacultyCount();
	public int getNonAllocatedFacultyCount();
	public int getProjectMentorAllocatedProjectCount();
	public int getProjectMentorNotAllocatedProjectCount();
	int getCompletedReviewsByProjectId(int pid);
	public Student getStudentByStudentID(int id);

}

package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Review;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Submission;

public interface StudentService 
{
	
	public int getStudentIdByUsername(String uname);
	public Student getStudentByStudentID(int id);
	public Student checkstudentlogin(String suname,String spwd);
	public Student viewstudent(String suname);
	public int changestudentpassword(String soldpwd,String snewpwd,String suname);
	public boolean checkallocation(int conID);
	public void changeallocation(int conID);
	public List<Student> getAllStudent();
	public boolean getStudentLeadStatus(int sid);
	public Submission addsubmission(Submission s);
	public List<Submission> viewsubmission();
	public Submission viewsubmissionById(int sid);
	public Submission getSubmissionByrid(int rid);
	public List<Submission> getSubmissionByProjectid(int fmentorid);
	List<Review> viewreviewsByProjectId(int pid);
	void editstatustosubmitted(int rid);
	int getAllReviewsByProjectId(int pid);
	int getCompletedReviewsByProjectId(int pid);
	Review getReviewByReviewId(int rid);
	public Project addproject(Project project);
	public List<Project> viewuserprojects(int id) ;
	public Project viewUserProjectByID(int pid);
	public void allocatefaculty(int fmentorid,int pid);
	public int checkmentorallocation(int pid);
	public List<Faculty> viewallfacultysorted();
	public void updateproalloted(int fid);
	public Student viewstudentbyid(int sid);
}

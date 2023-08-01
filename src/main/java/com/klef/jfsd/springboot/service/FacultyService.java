package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Review;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Submission;

public interface FacultyService 
{
	
	public Faculty checkfacultylogin(String funame,String fpwd);
	public Faculty viewfaculty(String fname);
	public int changefacultypassword(String foldpwd,String fnewpwd,String funame);
	public void updateproalloted(int fid);
	public int FacultyIdByUsername(String funame);
	public Faculty getFacultyById(int fmentorid);
	public List<Submission> viewsubmission();
	public Submission viewsubmissionById(int sid);
	public void editratingfeedback(int rating , String feedback, int sid);
	public Submission getSubmissionByrid(int rid);
	public List<Submission> getSubmissionByProjectid(int fmentorid);
	List<Review> viewreviewsByProjectId(int pid);
	void addreview(Review r);
	int getAllReviewsByProjectId(int pid);
	int getCompletedReviewsByProjectId(int pid);
	void editstatustocompleted(int rid);
	Review getReviewByReviewId(int rid);
	public List<Project> viewfacultyprojects(int id);
	public void editProgress(double progress , int pid);
	public Project viewUserProjectByID(int pid);
	public Student getStudentByStudentID(int id);
	public Faculty viewfacultybyid(int fid);
}

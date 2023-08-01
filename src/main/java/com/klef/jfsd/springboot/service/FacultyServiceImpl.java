package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Review;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Submission;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.ProjectRepository;
import com.klef.jfsd.springboot.repository.ReviewRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.repository.SubmissionRepository;

@Service
public class FacultyServiceImpl implements FacultyService 
{
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private ProjectRepository projectRepository;
	
	@Autowired
	private FacultyRepository facultyRepository;

	@Autowired
	SubmissionRepository submissionrepository;
	
	@Autowired
	ReviewRepository reviewrepository;
	
	@Override
	public Faculty checkfacultylogin(String funame, String fpwd) 
	{
		Faculty faculty = facultyRepository.checkfacultylogin(funame, fpwd);
		
		return faculty;
				
	}

	@Override
	public Faculty viewfaculty(String funame) 
	{
		
		return facultyRepository.viewfaculty(funame);
	}

	@Override
	public int changefacultypassword(String foldpwd, String fnewpwd, String funame)
	{
		
		return facultyRepository.updatefacultypassword(fnewpwd, foldpwd, funame);
	}

	@Override
	public void updateproalloted(int fid) {
		facultyRepository.updateproalloted(fid);
		
	}

	@Override
	public int FacultyIdByUsername(String funame) 
	{
	  return facultyRepository.FacultyIdByUsername(funame);
		
		
	}
	@Override
	public Faculty getFacultyById(int fmentorid) {
		return facultyRepository.findFacultyByID(fmentorid);
	}
	
	@Override
	public List<Submission> viewsubmission() {
		return (List<Submission>) submissionrepository.findAll();
	}
	@Override
	public Submission viewsubmissionById(int sid) {
		return submissionrepository.viewSubmissionById(sid);
	}
	@Override
	public void editratingfeedback(int rating, String feedback, int sid) {
		submissionrepository.editratingfeedbackById(rating , feedback, sid);
		
	}
	@Override
	public Submission getSubmissionByrid(int rid) {
		return submissionrepository.getSubmissionBrid(rid);
	}
	@Override
	public List<Submission> getSubmissionByProjectid(int proid) {
		return submissionrepository.getSubmissionByProjectid( proid);
	}

	@Override
	public List<Review> viewreviewsByProjectId(int pid) {
		return reviewrepository.viewReviewsByProjectID(pid);
	}
	@Override
	public void addreview(Review r) {
		reviewrepository.save(r);
	}
	
	@Override
	public void editstatustocompleted(int rid) {
		reviewrepository.editstatustocompleted(rid);
	}
	@Override
	public int getAllReviewsByProjectId(int pid) {
		return reviewrepository.getAllReviewsByProjectId(pid);
	}
	@Override
	public int getCompletedReviewsByProjectId(int pid) {
		return reviewrepository.getCompletedReviewsByProjectId(pid);
	}
	@Override
	public Review getReviewByReviewId(int rid) {
		return reviewrepository.getReviewByReviewId(rid);
	}
	
	public List<Project> viewuserprojects(int id) 
	{
		
		return (List<Project>) projectRepository.viewProjectByUser(id); 
	}
  
	@Override
	public List<Project> viewfacultyprojects(int id) {
		 
		return (List<Project>) projectRepository.viewProjectUnderFaculty(id);
	}
	@Override
	public void editProgress(double progress , int pid) {
		int progressint = (int)progress;
		projectRepository.editProgress(progressint , pid);
		
	}
	@Override
	public Student getStudentByStudentID(int id) {
		return studentRepository.findStudentById(id);
	}
	@Override
	public Project viewUserProjectByID(int pid) {
		return projectRepository.viewUserProjetbyID(pid);
	}
	@Override
	public Faculty viewfacultybyid(int fid) {
		
		return facultyRepository.viewfacultybyid(fid);
	}

}

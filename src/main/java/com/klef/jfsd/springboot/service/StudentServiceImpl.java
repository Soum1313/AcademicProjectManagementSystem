package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Review;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Submission;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.ProjectRepository;
import com.klef.jfsd.springboot.repository.ReviewRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.repository.SubmissionRepository;

@Service
public class StudentServiceImpl implements StudentService
{
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private ProjectRepository projectRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	ReviewRepository reviewrepository;

	@Autowired
	SubmissionRepository submissionrepository;
	
	@Autowired
	FacultyRepository facultyRepository;

	@Override
	public Student checkstudentlogin(String suname, String spwd) 
	{
		
		return studentRepository.checkstudentlogin(suname, spwd);
	}

	@Override
	public Student viewstudent(String suname) 
	{
		return studentRepository.viewstudent(suname);
	}

	@Override
	public int changestudentpassword(String soldpwd, String snewpwd, String suname) 
	{
		
		return studentRepository.updatestudentpassword(snewpwd, soldpwd, suname);
	}
	
	@Override
	public int getStudentIdByUsername(String uname) {
		return studentRepository.getIDbyUname(uname);
	}
	
	public boolean checkallocation(int conID)
	{
		
	 Student student = studentRepository.getconallocation(conID);
	 if(student==null) {
		 return true;
	 }
	 return student.isAllocated();
	}
	public void changeallocation(int conID) {
		 studentRepository.updateallocation(conID);
	}
	
	public List<Student> getAllStudent(){
		return (List<Student>) studentRepository.findAll();
	}
	@Override
	public Student getStudentByStudentID(int id) {
		return studentRepository.findStudentById(id);
	}
	@Override
	public boolean getStudentLeadStatus(int sid) {
		Student student = studentRepository.findStudentById(sid);
		if(student.isTeamLead()) return true;
		else return false;
	}
	
	@Override
	public Submission addsubmission(Submission s) {
		return submissionrepository.save(s);
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
	public void editstatustosubmitted(int rid) {
		reviewrepository.editstatustosubmitted(rid);
		
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
	@Override
	public Project addproject(Project project) {

		return projectRepository.save(project);
	}
	public List<Project> viewuserprojects(int id) 
	{
		
		return (List<Project>) projectRepository.viewProjectByUser(id); 
	}
    @Override
	public Project viewUserProjectByID(int pid) {
		return projectRepository.viewUserProjetbyID(pid);
	}
    @Override
    public void allocatefaculty(int fmentorid, int pid) 
    {
    	projectRepository.allocateFaculty(fmentorid,pid);
	
	
    }
    @Override
    public int checkmentorallocation(int pid) {
    	
    	Project p = viewUserProjectByID(pid);
    	return p.getFmentorid(); 
 
    }
    @Override
	public List<Faculty> viewallfacultysorted()
	{
		
		
		return adminRepository.viewAllFacultySorted();
	}
    @Override
	public void updateproalloted(int fid) {
		facultyRepository.updateproalloted(fid);
		
	}
    @Override
	public Student viewstudentbyid(int sid) 
	{
		
		return studentRepository.findById(sid).get();
	}

}

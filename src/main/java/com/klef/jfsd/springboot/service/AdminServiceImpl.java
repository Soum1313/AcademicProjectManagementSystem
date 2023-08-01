package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Review;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.ProjectRepository;
import com.klef.jfsd.springboot.repository.ReviewRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private FacultyRepository facultyRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private ProjectRepository projectRepository;
	
	@Autowired
	ReviewRepository reviewrepository;

	
	@Override
	public Student addstudent(Student student) 
	{
		
		return studentRepository.save(student);
	}
	@Override
	public Faculty addfaculty(Faculty faculty) 
	{
		
		
		return facultyRepository.save(faculty);
	}
	@Override
	public Admin checkadminlogin(String auname, String apwd) 
	{
		return adminRepository.checkadminlogin(auname, apwd);
	
	}

	@Override
	public List<Faculty> viewallfaculty() 
	{
		
		return (List<Faculty>) facultyRepository.findAll(); 
	}
	
	@Override
	public void deletefaculty(int fid) 
	{
		facultyRepository.deleteById(fid);
		
		
	}

	@Override
	public Faculty viewfacultybyid(int fid) {
		
		return facultyRepository.viewfacultybyid(fid);
	}

	@Override
	public List<Student> viewallstudents() {
		
		return (List<Student>) studentRepository.findAll(); 
	}

	@Override
	public void deletestudent(int sid) 
	{
		studentRepository.deleteById(sid);
		
		
	}

	@Override
	public Student viewstudentbyid(int sid) 
	{
		
		return studentRepository.findById(sid).get();
	}
	@Override
	public List<Faculty> viewallfacultysorted()
	{
		
		
		return adminRepository.viewAllFacultySorted();
	}
	@Override
	public void changestudentLead(int stuid) {
		adminRepository.changestudentleadstatus(stuid);
		
	}
	
	@Override
	public int getAllocatedFacultyCount() {
		return (int) facultyRepository.countAllocatedFaculty();
	}
	@Override
	public int getFacultyCount() {
		return (int) facultyRepository.count();
	}
	@Override
	public int getNonAllocatedFacultyCount() {
		return (int) facultyRepository.countNotAllocatedFaculty();
	}@Override
	public int getOngoingProjectCount() {
		return (int) projectRepository.countOngoingProject();
	}
	@Override
	public int getProjectCompletedCount() {
		return (int) projectRepository.countCompletedProject();
	}
	@Override
	public int getProjectCount() {
		return (int) projectRepository.count();
	}@Override
	public int getProjectMentorAllocatedProjectCount() {
		return (int) projectRepository.countMentorAllocatedProject();
	}@Override
	public int getProjectMentorNotAllocatedProjectCount() {
		return (int) projectRepository.countMentorNotAllocatedProject();
	}@Override
	public int getStudentCount() {
		return (int) studentRepository.count();
	}@Override
	public List<Project> getTopPerformingProjects() {
		return  projectRepository.countTopPerformingProject();
	}
	@Override
	public int getCompletedReviewsByProjectId(int pid) {
		return reviewrepository.getCompletedReviewsByProjectId(pid);
	}
	@Override
	public Student getStudentByStudentID(int id) {
		return studentRepository.findStudentById(id);
	}
	
}

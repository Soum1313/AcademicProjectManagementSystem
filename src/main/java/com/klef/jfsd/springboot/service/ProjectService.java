package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Project;

public interface ProjectService {
	public Project addproject(Project project);
	public List<Project> viewuserprojects(int id) ;
	public Project viewUserProjectByID(int pid);
	public void allocatefaculty(int fmentorid,int pid);
	public int checkmentorallocation(int pid);
	public List<Project> viewfacultyprojects(int id);
	public void editProgress(double progress , int pid);
}

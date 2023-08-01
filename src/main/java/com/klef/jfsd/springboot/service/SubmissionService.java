package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Submission;

public interface SubmissionService {
	public Submission addsubmission(Submission s);
	public List<Submission> viewsubmission();
	public Submission viewsubmissionById(int sid);
	public void editratingfeedback(int rating , String feedback, int sid);
	public Submission getSubmissionByrid(int rid);
	public List<Submission> getSubmissionByProjectid(int fmentorid);
	
}

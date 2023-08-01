package com.klef.jfsd.springboot.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Submission;

@Repository
public interface SubmissionRepository extends CrudRepository<Submission, Integer>{

	@Query("select s from Submission s where subid = ?1")
	public Submission viewSubmissionById(int sid);
	
	@Transactional
	@Modifying
	@Query("update Submission set rating = ?1 , feedback=?2 where subid = ?3")
	public void editratingfeedbackById(int rating,String feedback,int sid );
	
	@Query("Select s from Submission s where reviewId = ?1 and subid in (select max(subid) from Submission where reviewId = ?1)")
	public Submission getSubmissionBrid(int rid);

	@Query("Select s from Submission s where s.projectId = ?1 and s.rating>0")
	public List<Submission> getSubmissionByProjectid(int proid);
	
	
	
	
}

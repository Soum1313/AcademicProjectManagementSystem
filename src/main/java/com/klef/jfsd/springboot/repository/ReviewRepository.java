package com.klef.jfsd.springboot.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.Review;

@Repository
public interface ReviewRepository extends CrudRepository<Review, Integer>{

	@Query("select r from Review r where projectid = ?1")
	List<Review> viewReviewsByProjectID(int pid);

	@Transactional
	@Modifying
	@Query("update Review set status = 'submitted' where id = ?1")
	void editstatustosubmitted(int rid);
	
	@Transactional
	@Modifying
	@Query("update Review set status = 'completed' where id = ?1")
	void editstatustocompleted(int rid);

	@Query("select count(r.previewid) from Review r where projectid = ?1")
	public int getAllReviewsByProjectId(int pid);
	@Query("select count(r.previewid) from Review r where projectid = ?1 and status ='completed'")
	public int getCompletedReviewsByProjectId(int pid);

	@Query("select r from Review r where id = ?1")
	Review getReviewByReviewId(int rid);

}

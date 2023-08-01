package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Review;

public interface ReviewService {

	List<Review> viewreviewsByProjectId(int pid);

	void addreview(Review r);

	void editstatustosubmitted(int rid);

	
	int getAllReviewsByProjectId(int pid);

	int getCompletedReviewsByProjectId(int pid);

	void editstatustocompleted(int rid);

	Review getReviewByReviewId(int rid);

}

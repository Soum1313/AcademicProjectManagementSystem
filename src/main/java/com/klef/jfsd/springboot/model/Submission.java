package com.klef.jfsd.springboot.model;

import javax.persistence.*;


@Entity
@Table(name="submission_table")
public class Submission 
{
  @Id
  @GeneratedValue
  private int subid;
  @Column(nullable = false)
  private int submittedById;
  @Column(nullable = false)
    private String submissiontime;
  @Column(nullable = false)
  private String comment;
  @Column(nullable = false)
  private int projectId;
  @Column(nullable = false)
  private int reviewId;
  @Column(nullable = false)
  private String text; // submission
  private String feedback;
  private int rating;

  
  
  
public int getSubid() {
	return subid;
}
public void setSubid(int subid) {
	this.subid = subid;
}
public int getSubmittedById() {
	return submittedById;
}
public void setSubmittedById(int submittedById) {
	this.submittedById = submittedById;
}
public String getSubmissiontime() {
	return submissiontime;
}
public void setSubmissiontime(String submissiontime) {
	this.submissiontime = submissiontime;
}
public String getComment() {
	return comment;
}
public void setComment(String comment) {
	this.comment = comment;
}
public int getProjectId() {
	return projectId;
}
public void setProjectId(int projectId) {
	this.projectId = projectId;
}
public int getReviewId() {
	return reviewId;
}
public void setReviewId(int reviewId) {
	this.reviewId = reviewId;
}
public String getText() {
	return text;
}
public void setText(String text) {
	this.text = text;
}
public String getFeedback() {
	return feedback;
}
public void setFeedback(String feedback) {
	this.feedback = feedback;
}
public int getRating() {
	return rating;
}
public void setRating(int rating) {
	this.rating = rating;
}


}
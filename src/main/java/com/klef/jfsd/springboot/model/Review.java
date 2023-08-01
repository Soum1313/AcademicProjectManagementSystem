package com.klef.jfsd.springboot.model;

import javax.persistence.*;

@Entity
@Table(name="review_table")
public class Review {
	@Id
	@GeneratedValue
	private int id;
	@Column(nullable = false)
	private int projectid;
	@Column(nullable = false)
	private int previewid;
	@Column(nullable = false)
	private String deadline;
	@Column(nullable = false)
	private String component;
	private String status;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProjectid() {
		return projectid;
	}
	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}
	public int getPreviewid() {
		return previewid;
	}
	public void setPreviewid(int previewid) {
		this.previewid = previewid;
	}
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getComponent() {
		return component;
	}
	public void setComponent(String component) {
		this.component = component;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	
}

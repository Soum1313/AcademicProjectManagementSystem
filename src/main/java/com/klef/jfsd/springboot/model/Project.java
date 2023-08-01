package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="project_table")
public class Project 
{
	@Id
	@GeneratedValue
	@Column(nullable=false, length=400)
	private int pid;
	@Column(nullable=false, length=400)
	private String title;
	
	@Column(nullable=false, length=400)
	private String domain;
	
	@Column(nullable=false, length=800)
	private String description;
	
	@Column(nullable=false)
	private int pleadid;
	
	@Column(nullable=false)
	private int contributor1;
	
	@Column(nullable=false)
	private int contributor2;
	
	private int fmentorid;
	
	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getExpectedenddate() {
		return expectedenddate;
	}

	public void setExpectedenddate(String expectedenddate) {
		this.expectedenddate = expectedenddate;
	}

	public int getProgress() {
		return progress;
	}

	public void setProgress(int progress) {
		this.progress = progress;
	}


	private String startdate;

	private String expectedenddate;
	private int progress;

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getContributor1() {
		return contributor1;
	}

	public void setContributor1(int contributor1) {
		this.contributor1 = contributor1;
	}

	public int getContributor2() {
		return contributor2;
	}

	public void setContributor2(int contributor2) {
		this.contributor2 = contributor2;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public int getPleadid() {
		return pleadid;
	}

	public void setPleadid(int pleadid) {
		this.pleadid = pleadid;
	}

	public int getFmentorid() {
		return fmentorid;
	}

	public void setFmentorid(int fmentorid) {
		this.fmentorid = fmentorid;
	}
	
	
	
	

}

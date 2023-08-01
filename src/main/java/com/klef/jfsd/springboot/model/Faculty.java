package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="faculty_table")
public class Faculty 
{
	@Id
	@GeneratedValue
	private int fid;
	@Column(nullable=false,length=200)
	private String fname;
	@Column(nullable=false,length=10)
	private String fgender;
	@Column(nullable=false,length=200)
	private String fdepartment;
	@Column(nullable=false,length=200)
	private String fdesignation;
	@Column(nullable = false,precision = 10,scale = 4)
	private Double fsalary;
	@Column(nullable = false,length = 200)
	private String flocation;
	@Column(nullable = false,unique = true,length = 200)
	private String fmailid;
	@Column(nullable = false,unique = true,length = 200)
	private String fusername;
	@Column(nullable = false,length = 200)
    private String fpassword;
	@Column(nullable = false,length = 200)
	private String fcontactno;
	@Column (nullable = false , length = 200)
	private String fdomain;
	
	private int projectsalloted;
	
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFgender() {
		return fgender;
	}
	public void setFgender(String fgender) {
		this.fgender = fgender;
	}
	public String getFdesignation() {
		return fdesignation;
	}
	public void setFdesignation(String fdesignation) {
		this.fdesignation = fdesignation;
	}
	public Double getFsalary() {
		return fsalary;
	}
	public void setFsalary(Double fsalary) {
		this.fsalary = fsalary;
	}
	public String getFlocation() {
		return flocation;
	}
	public void setFlocation(String flocation) {
		this.flocation = flocation;
	}
	public String getFmailid() {
		return fmailid;
	}
	public void setFmailid(String fmailid) {
		this.fmailid = fmailid;
	}
	public String getFusername() {
		return fusername;
	}
	public void setFusername(String fusername) {
		this.fusername = fusername;
	}
	public String getFpassword() {
		return fpassword;
	}
	public void setFpassword(String fpassword) {
		this.fpassword = fpassword;
	}
	public String getFcontactno() {
		return fcontactno;
	}
	public void setFcontactno(String fcontactno) {
		this.fcontactno = fcontactno;
	}
	public String getFdepartment() {
		return fdepartment;
	}
	public void setFdepartment(String fdepartment) {
		this.fdepartment = fdepartment;
	}
	@Override
	public String toString() {
		return "Faculty [fid=" + fid + ", fname=" + fname + ", fgender=" + fgender + ", fdepartment=" + fdepartment
				+ ", fdesignation=" + fdesignation + ", fsalary=" + fsalary + ", flocation=" + flocation + ", fmailid="
				+ fmailid + ", fusername=" + fusername + ", fpassword=" + fpassword + ", fcontactno=" + fcontactno
				+ "]";
	}
	public int getProjectsalloted() {
		return projectsalloted;
	}
	public void setProjectsalloted(int projectsalloted) {
		this.projectsalloted = projectsalloted;
	}
	public String getFdomain() {
		return fdomain;
	}
	public void setFdomain(String fdomain) {
		this.fdomain = fdomain;
	}

}

package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student_table")
public class Student 
{
	@Id
	@GeneratedValue
	private int sid;
	@Column(nullable = false,length = 200)
	private String sname;
	@Column(nullable = false,length = 200)
	private String dob;
	@Column(nullable = false,length = 200)
	private String sdept;
	@Column(nullable = false,length = 500)
	private String smailid;
	@Column(nullable = false,length = 500)
	private String susername;
	@Column(nullable = false,length = 200)
	private String spassword;
	@Column(nullable = false,length = 500)
	private String scontactno;
	@Column(name="is_team_lead" , nullable = false)
	private boolean isTeamLead;
	
	private Blob studentimage;
	
	public Blob getStudentimage() {
		return studentimage;
	}
	public void setStudentimage(Blob studentimage) {
		this.studentimage = studentimage;
	}
	public boolean isTeamLead() {
		return isTeamLead;
	}
	public void setTeamLead(boolean isTeamLead) {
		this.isTeamLead = isTeamLead;
	}
	private boolean isAllocated;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getSdept() {
		return sdept;
	}
	public void setSdept(String sdept) {
		this.sdept = sdept;
	}
	public String getSmailid() {
		return smailid;
	}
	public void setSmailid(String smailid) {
		this.smailid = smailid;
	}
	public String getSusername() {
		return susername;
	}
	public void setSusername(String susername) {
		this.susername = susername;
	}
	public String getSpassword() {
		return spassword;
	}
	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}
	public String getScontactno() {
		return scontactno;
	}
	public void setScontactno(String scontactno) {
		this.scontactno = scontactno;
	}
	public boolean isAllocated() {
		return isAllocated;
	}
	public void setAllocated(boolean isAllocated) {
		this.isAllocated = isAllocated;
	}
	
	
	

}

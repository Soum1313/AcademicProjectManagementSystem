package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="todolist_table")
public class Todolist 
{
	@Id
	@GeneratedValue
	private int tid;
	
	@Column(nullable=false,length=800)
	private String description;
	
	private String Stuname;
	
	@Column(nullable=false,length=800)
	private String timestamp;

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStuname() {
		return Stuname;
	}

	public void setStuname(String stuname) {
		Stuname = stuname;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
	
	

}

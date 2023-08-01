package com.klef.jfsd.springboot.model;

import javax.persistence.Column;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin_table")
public class Admin 
{
  @Id
  @Column(nullable = false,length = 200)
  private String ausername;
  @Column(nullable = false,length = 200)
  private String apassword;

  
public String getAusername() {
	return ausername;
}
public void setAusername(String ausername) {
	this.ausername = ausername;
}
public String getApassword() {
	return apassword;
}
public void setApassword(String apassword) {
	this.apassword = apassword;
}
}

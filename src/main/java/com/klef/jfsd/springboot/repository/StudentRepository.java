package com.klef.jfsd.springboot.repository;

import javax.transaction.Transactional;


import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Integer> 
{
	@Query("select s from Student s where susername=?1 and spassword=?2")
	 public Student checkstudentlogin(String suname,String spwd);
	
	@Query("select s from Student s where susername=?1")
	public Student viewstudent(String suname);
	
	@Transactional
	@Modifying
	@Query("update Student s set s.spassword=?1 where s.spassword=?2 and s.susername=?3")
	public int updatestudentpassword(String snewpwd,String soldpwd,String suname);
	
	@Query("select s.sid from Student s where susername=?1")
	public int getIDbyUname(String uname);
	
	@Query("select s from Student s where sid=?1")
	public Student getconallocation(int conID);
	
	@Transactional
	@Modifying
	@Query("update Student s set s.isAllocated=true where s.sid=?1")
	public void updateallocation(int conID);
	
	@Query ("Select s  from Student s where sid=?1  ")
	public Student findStudentById(int id);
}

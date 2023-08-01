package com.klef.jfsd.springboot.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Faculty;

@Repository
public interface FacultyRepository extends CrudRepository<Faculty, Integer>
{
	@Query("select f from Faculty f where fusername=?1 and fpassword=?2")
	 public Faculty checkfacultylogin(String funame,String fpwd);

	@Query("select f from Faculty f where fusername=?1")
	public Faculty viewfaculty(String funame);
	
	@Query("select f from Faculty f where fid=?1")
	public Faculty viewfacultybyid(int fid);
	
	@Transactional
	@Modifying
	@Query("update Faculty f set f.fpassword=?1 where f.fpassword=?2 and f.fusername=?3")
	public int updatefacultypassword(String fnewpwd,String foldpwd,String funame);
	
	@Transactional
	@Modifying
	@Query("Update Faculty set projectsalloted = projectsalloted + 1 where fid = ?1")
	public void updateproalloted(int fid);
	
	@Query("select f.fid from Faculty f where fusername=?1")
	public int FacultyIdByUsername(String funame);

	@Query("Select f from Faculty f where f.fid = ?1")
	public Faculty findFacultyByID(int fmentorid);

	@Query("Select count(projectsalloted) from Faculty f where f.projectsalloted>0")
	public int countAllocatedFaculty();
	
	@Query("Select count(projectsalloted) from Faculty f where f.projectsalloted=0")
	public int countNotAllocatedFaculty();

	


}

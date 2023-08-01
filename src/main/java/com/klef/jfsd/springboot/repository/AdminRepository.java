package com.klef.jfsd.springboot.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;


@Repository
public interface AdminRepository extends CrudRepository<Admin,String>
{
	@Query("select a from Admin a where ausername=?1 and apassword=?2")
	public Admin checkadminlogin(String auname,String apwd);
	
    @Query("select f from Faculty f where projectsalloted<3")
	public List<Faculty> viewAllFacultySorted();

    @Transactional
    @Modifying
    @Query("update Student s set s.isTeamLead = true where s.sid = ?1")
	public void changestudentleadstatus(int stuid);
	
	
	
}
	
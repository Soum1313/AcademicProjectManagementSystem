package com.klef.jfsd.springboot.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Project;

@Repository
public interface ProjectRepository extends CrudRepository<Project,Integer>
{
	@Query("select p from Project p where pleadid=?1 OR contributor1 =?1 OR contributor2 = ?1")
	public List<Project> viewProjectByUser(int id);
	
	@Query("select p from Project p where pid = ?1")
	public Project viewUserProjetbyID(int pid);
	
	@Transactional
	@Modifying
	@Query("Update Project set fmentorid = ?1 where pid = ?2")
	public void allocateFaculty(int fmentorid,int pid);
	
	@Query("select p from Project p where fmentorid=?1")
	public List<Project> viewProjectUnderFaculty(int id);

	@Query("select count(progress) from Project p where p.progress <100")
	public int countOngoingProject();

	@Query("select count(progress) from Project p where p.progress =100")
	public int countCompletedProject();

	@Query("select count(fmentorid) from Project p where p.fmentorid >0")
	public int countMentorAllocatedProject();

	@Query("select count(fmentorid) from Project p where p.fmentorid =0")
	public int countMentorNotAllocatedProject();

	@Query("select p from Project p order by p.progress DESC")
	public List<Project> countTopPerformingProject();

	@Transactional
	@Modifying
	@Query("update Project set progress = ?1 where pid = ?2")
	public void editProgress(int progressint, int pid);
	
	

}

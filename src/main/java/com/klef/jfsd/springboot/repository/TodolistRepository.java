package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Todolist;

@Repository
public interface TodolistRepository extends CrudRepository<Todolist,Integer>
{
	@Query("Select t from Todolist t where Stuname = ?1")
	public Todolist viewlistbyuserid(String uname);
}

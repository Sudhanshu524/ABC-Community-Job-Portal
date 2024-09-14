package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.beans.Jobs;

@Repository
public interface JobsRepo extends JpaRepository<Jobs, Integer> {
	
	@Query(value = "SELECT * FROM Jobs ORDER BY jobs_id DESC", nativeQuery = true)
	List<Jobs> viewJobs();
 
}

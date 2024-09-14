package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.beans.Apply;

@Repository
public interface ApplyRepo extends JpaRepository<Apply, Integer> {
	
	@Query(value = "SELECT * FROM apply ORDER BY jobs_id DESC", nativeQuery = true)
	String Apply();
 
}

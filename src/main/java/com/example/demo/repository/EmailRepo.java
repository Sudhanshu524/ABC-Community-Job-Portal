package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.beans.BulkEmail;

@Repository
public interface EmailRepo extends JpaRepository <BulkEmail, Integer> {
	
	@Query(value = "SELECT * FROM send_email ORDER BY time DESC", nativeQuery = true)
	List<BulkEmail> viewEmail();

}

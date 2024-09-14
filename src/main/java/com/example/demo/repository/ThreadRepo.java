package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.beans.Thread;

@Repository
public interface ThreadRepo extends JpaRepository<Thread, Integer> {
	@Query(value = "SELECT * FROM thread ORDER BY thread_id DESC", nativeQuery = true)
	List<Thread> viewThread();
}

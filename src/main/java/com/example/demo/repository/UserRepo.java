//Repository for ABCCommunity
//Data Access Object

package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.beans.User;
import java.lang.String;

@Repository
public interface UserRepo extends JpaRepository <User, Integer> {
	List<User> findByUsernameContaining(String search);
	List<User> findByFirstNameContaining(String search);
	List<User> findByLastNameContaining(String search);
	List<User> findByAddressContaining(String search);
	List<User> findByContactContaining(String search);

	User findByEmail(String email);
	
	@Query(value = "SELECT COUNT(email) FROM user WHERE email = ?1", nativeQuery = true)
	String register(String email);
	
	@Query(value = "SELECT * FROM user WHERE username LIKE %:search% OR first_name LIKE %:search% OR last_name LIKE %:search% OR address LIKE %:search%", nativeQuery = true)
	List<User> findNameContain(@Param("search")String search);
	
}

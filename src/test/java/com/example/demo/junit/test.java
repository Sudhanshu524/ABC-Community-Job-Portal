package com.example.demo.junit;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.beans.User;
import com.example.demo.service.UserService;

@SpringBootTest
class test {
	@Autowired
	UserService userService;

	@Test
	void register() {
		User user = new User();
		user.setUsername("Siddhu");
		user.setEmail("siddhu@gmail.com");
		user.setFirstName("Siddhu");
		user.setLastName("Moosewala");
		user.setPassword("1234567890");
		user.setAddress("Indore");
		user.setContact("123456785");
		userService.addUserDetail(user);
		System.out.println(user);
		assertThat(user).isNotNull();
	}
	
	@Test
	void search() {
		List<User> users=userService.showUser("s");
		System.out.println(users);
		assertThat(users).isNotEmpty();
	}

}

//Service for Login Security

package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.beans.User;
import com.example.demo.repository.UserRepo;
import com.example.demo.security.ApplicationUserDetail;
@Service
public class Customservice implements UserDetailsService {
    @Autowired
	UserRepo DaoUser;
    User user;
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		user=DaoUser.findByEmail(email);
		if(user==null) {
			System.out.println("User name is Invalid");
			throw new UsernameNotFoundException(email + " Not Found");
		}
		return new ApplicationUserDetail(user);
	}

}

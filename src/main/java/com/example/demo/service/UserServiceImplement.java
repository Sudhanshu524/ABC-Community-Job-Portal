//Service to do Action

package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.beans.User;
import com.example.demo.repository.UserRepo;


@Service("userservice")
public class UserServiceImplement implements UserService{
	private PasswordEncoder passwordencoder;
	@Autowired
	UserRepo repoUser;

	List<User> myAllUsers = new ArrayList<User>();
	
	@Autowired
	public UserServiceImplement(PasswordEncoder encoder) {
		// TODO Auto-generated constructor stub
		this.passwordencoder=encoder;
	}
	//Register
	@Override
	public void addUserDetail(User u) {
		// TODO Auto-generated method stub
		u.setRole("USER"); //Auto role for new register
		u.setPassword(passwordencoder.encode(u.getPassword())); //Encode password to bcrypt
		repoUser.save(u);	//To add record to the database table
	}

	@Override
	public List<User> showwAllUser() {
		// TODO Auto-generated method stub
		List<User> allDatabase=repoUser.findAll();
		return allDatabase;
	}

	@Override
	public List<User> showUser(String name) {
		// TODO Auto-generated method stub
		return repoUser.findNameContain(name);
	}

	@Override
	public void deleteData(int id) {
		// TODO Auto-generated method stub
		repoUser.deleteById(id);
	}

	@Override
	public User SearchUser(int userid) {
		// TODO Auto-generated method stub
		Optional<User> userData = repoUser.findById(userid);
		User d = userData.get();
		return d;
	}

	@Override
	public User login(String email) {
		// TODO Auto-generated method stub
		User userLogin = repoUser.findByEmail(email);
		return userLogin;
	}

	//Check existing email when register
	@Override
	public String register(String email) {
		// TODO Auto-generated method stub
		String userRegister = repoUser.register(email);
		return userRegister;
	}
	
	@Override
	public void updateUserDetail(User u) {
		// TODO Auto-generated method stub
		repoUser.save(u);	//To add record to the database table
	}
	@Override
	public void updatePass(User u) {
		// TODO Auto-generated method stub
		u.setPassword(passwordencoder.encode(u.getPassword())); //Encode password to bcrypt
		repoUser.save(u);	//To add record to the database table
	}
	
	@Override
	public User emailForgetPass(String email) {
		// TODO Auto-generated method stub
		User emailUpdatePass = repoUser.findByEmail(email);
		return emailUpdatePass;
	}
	
	
}

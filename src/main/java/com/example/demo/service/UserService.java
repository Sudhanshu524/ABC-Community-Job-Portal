package com.example.demo.service;

import java.util.List;

import com.example.demo.beans.User;


public interface UserService {
	public void addUserDetail (User u);
	public List<User> showwAllUser();
	public List<User> showUser(String name);
	public void deleteData(int id);
	public User SearchUser(int userid);
	public User login(String email);
	public String register(String email);
	public void updateUserDetail (User u);
	public void updatePass(User u);
	public User emailForgetPass(String email);
}

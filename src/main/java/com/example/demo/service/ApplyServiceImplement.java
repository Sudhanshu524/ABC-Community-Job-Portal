package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.beans.Apply;

import com.example.demo.repository.ApplyRepo;

@Service
public class ApplyServiceImplement implements ApplyService {

	@Autowired
	ApplyRepo repoApply;
	
	@Override
	public void addApply(Apply a) {
		// TODO Auto-generated method stub
		
		repoApply.save(a);	//To add record to the database table
	}

	

}

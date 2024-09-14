package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.beans.Jobs;
import com.example.demo.beans.Thread;
import com.example.demo.repository.JobsRepo;
import com.example.demo.repository.ThreadRepo;

@Service
public class JobsThreadServiceImplement implements JobsThreadService {
	@Autowired
	JobsRepo repoJobs;
	@Autowired
	ThreadRepo repoThread;
	
	//JOBS

	@Override
	public void addJobs(Jobs j) {
		// TODO Auto-generated method stub
		repoJobs.save(j);
		System.out.println("Jobs added");
	}

	@Override
	public List<Jobs> showAllJobs() {
		// TODO Auto-generated method stub
		List<Jobs> allJobs = repoJobs.viewJobs();
		return allJobs;
	}

	@Override
	public void deleteJobs(int id) {
		// TODO Auto-generated method stub
		repoJobs.deleteById(id);
	}
	
	
	
	//THREAD

	@Override
	public void addThread(Thread t) {
		// TODO Auto-generated method stub
		repoThread.save(t);
	}

	@Override
	public List<Thread> showAllThreads() {
		// TODO Auto-generated method stub
		List<Thread> allThread = repoThread.viewThread();
		return allThread;
	}



}

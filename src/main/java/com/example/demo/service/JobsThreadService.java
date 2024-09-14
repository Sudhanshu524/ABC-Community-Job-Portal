package com.example.demo.service;

import java.util.List;

import com.example.demo.beans.Jobs;
import com.example.demo.beans.Thread;

public interface JobsThreadService {
	//Jobs
	public void addJobs(Jobs j);
	public List<Jobs> showAllJobs();
	public void deleteJobs(int id);
	
	//Thread
	public void addThread(Thread t);
	public List<Thread> showAllThreads();

}

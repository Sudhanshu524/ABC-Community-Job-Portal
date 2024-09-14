package com.example.demo.beans;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name ="thread")
public class Thread {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int threadId;
	
	@ManyToOne
	private User userT;
	
	private String mainThread;
	
	@CreationTimestamp
	private Date time;
	
	public Thread() {
		
	}

	public Thread(int threadId, User userT, String mainThread, Date time) {
		super();
		this.threadId = threadId;
		this.userT = userT;
		this.mainThread = mainThread;
		this.time = time;
	}

	public int getThreadId() {
		return threadId;
	}

	public void setThreadId(int threadId) {
		this.threadId = threadId;
	}

	public User getUserT() {
		return userT;
	}

	public void setUserT(User userT) {
		this.userT = userT;
	}

	public String getMainThread() {
		return mainThread;
	}

	public void setMainThread(String mainThread) {
		this.mainThread = mainThread;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "Thread [threadId=" + threadId + ", userT=" + userT + ", mainThread=" + mainThread + ", time=" + time
				+ "]";
	}

}

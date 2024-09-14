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
@Table(name="apply")
public class Apply {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int applyId;

	@ManyToOne
    private User userA;
	@ManyToOne
    private Jobs jobsA;

	
	@CreationTimestamp
	private Date time;
	
	public Apply() {
		
	}

	public Apply(User userA, Jobs jobsA, Date time) {
		super();
		
		this.userA = userA;
		this.jobsA = jobsA;
		
		this.time = time;
	}

	public int getApplyId() {
		return applyId;
	}

	public void setApplyId(int applyId) {
		this.applyId = applyId;
	}

	public User getUserA() {
		return userA;
	}

	public void setUserA(User userA) {
		this.userA = userA;
	}

	public Jobs getJobsA() {
		return jobsA;
	}

	public void setJobsA(Jobs jobsA) {
		this.jobsA = jobsA;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "Apply [applyId=" + applyId + ", userA=" + userA + ", jobsA=" + jobsA + ", time=" + time + "]";
	}

}	
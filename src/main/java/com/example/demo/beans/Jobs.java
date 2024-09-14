package com.example.demo.beans;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name="jobs")
public class Jobs {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int jobsId;

	@ManyToOne
    private User userJ;

	@OneToMany(mappedBy = "userA", cascade = CascadeType.ALL)
	private List<Apply> apply;

	private String jobsTitle;
	private String linkApply;
	private String location;
	private String company;
	private String companyWebsite;
	private String description;
	
	@CreationTimestamp
	private Date time;
	
	public Jobs() {
		
	}

	public Jobs(int jobsId, User userJ, String jobsTitle, String linkApply, String location, String company,
			String companyWebsite, String description, Date time) {
		super();
		this.jobsId = jobsId;
		this.userJ = userJ;
		this.jobsTitle = jobsTitle;
		this.linkApply = linkApply;
		this.location = location;
		this.company = company;
		this.companyWebsite = companyWebsite;
		this.description = description;
		this.time = time;
	}

	
	public int getJobsId() {
		return jobsId;
	}

	public void setJobsId(int jobsId) {
		this.jobsId = jobsId;
	}

	public User getUserJ() {
		return userJ;
	}

	public void setUserJ(User userJ) {
		this.userJ = userJ;
	}

	public String getJobsTitle() {
		return jobsTitle;
	}

	public void setJobsTitle(String jobsTitle) {
		this.jobsTitle = jobsTitle;
	}

	public String getLinkApply() {
		return linkApply;
	}

	public void setLinkApply(String linkApply) {
		this.linkApply = linkApply;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCompanyWebsite() {
		return companyWebsite;
	}

	public void setCompanyWebsite(String companyWebsite) {
		this.companyWebsite = companyWebsite;
	}
	
	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	@Override
	public String toString() {
		return "Jobs [jobsId=" + jobsId + ", userJ=" + userJ + ", jobsTitle=" + jobsTitle + ", linkApply=" + linkApply
				+ ", location=" + location + ", company=" + company + ", companyWebsite=" + companyWebsite
				+ ", description=" + description + ", time=" + time + "]";
	}


}

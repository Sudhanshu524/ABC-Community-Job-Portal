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
@Table(name="SendEmail")
public class BulkEmail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int emailId;
	
	@ManyToOne
	private User user;
	
	private String sendTo;
	private String subject;
	private String message;
	@CreationTimestamp
	private Date time;
	
	public BulkEmail() {
		
	}

	public BulkEmail(int emailId, User user, String sendTo, String subject, String message, Date time) {
		super();
		this.emailId = emailId;
		this.user = user;
		this.sendTo = sendTo;
		this.subject = subject;
		this.message = message;
		this.time = time;
	}

	public int getEmailId() {
		return emailId;
	}

	public void setEmailId(int emailId) {
		this.emailId = emailId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getSendTo() {
		return sendTo;
	}

	public void setSendTo(String sendTo) {
		this.sendTo = sendTo;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "BulkEmail [emailId=" + emailId + ", user=" + user + ", sendTo=" + sendTo + ", subject=" + subject
				+ ", message=" + message + ", time=" + time + "]" + "\n";
	}

}

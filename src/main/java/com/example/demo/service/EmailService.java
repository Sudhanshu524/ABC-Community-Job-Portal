package com.example.demo.service;

import java.util.List;

import com.example.demo.beans.BulkEmail;

public interface EmailService {
	public void sendEmail(String to, String subject, String message);
	public List<BulkEmail> showAllEmail();
	public void addEmail(BulkEmail e);
}

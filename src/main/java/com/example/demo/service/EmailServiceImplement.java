package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.example.demo.beans.BulkEmail;
import com.example.demo.repository.EmailRepo;
import com.example.demo.repository.UserRepo;

@Service
public class EmailServiceImplement implements EmailService {
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	EmailRepo repoEmail;
	@Autowired
	UserRepo repoUser;
	
	public void sendEmail(String to, String subject, String message) {
		SimpleMailMessage maillMessage = new SimpleMailMessage();
		
		maillMessage.setTo(to);
		maillMessage.setSubject(subject);
		maillMessage.setText(message);
		
		mailSender.send(maillMessage);
		System.out.println("Email has send to" + to);
	}

	@Override
	public List<BulkEmail> showAllEmail() {
		// TODO Auto-generated method stub
		List<BulkEmail> allEmails = repoEmail.viewEmail();
		return allEmails;
	}

	@Override
	public void addEmail(BulkEmail e) {
		// TODO Auto-generated method stub
		repoEmail.save(e);
		System.out.println("Email added to database");
	}
	
	
}

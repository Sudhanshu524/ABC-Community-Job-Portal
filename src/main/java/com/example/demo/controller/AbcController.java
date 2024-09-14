//WDF Module
//CONTROLLER of ABCComunnity 
//by Sudhanshu Kachhotia

package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.beans.User;
import com.example.demo.beans.BulkEmail;
import com.example.demo.beans.Jobs;
import com.example.demo.beans.Thread;
import com.example.demo.beans.Apply;
import com.example.demo.repository.UserRepo;
import com.example.demo.security.ApplicationUserDetail;
import com.example.demo.service.EmailService;
import com.example.demo.service.JobsThreadService;
import com.example.demo.service.ApplyService;
import com.example.demo.service.UserService;

@Controller
public class AbcController {
	@Autowired
	UserService userService;
	@Autowired
	EmailService emailService;
	@Autowired
	JobsThreadService jtService;
	@Autowired
	ApplyService applyService;
	
	List<User> ShowUser = new ArrayList<User>();
	UserRepo DaoUser;
	
	//index
	@GetMapping(value = "/")
	public String landingPage() {
		return "LandingPage";
	}
	
	
	//register
	@GetMapping(value = "/register")
	public String register(@ModelAttribute("data")User user) {
		return "Register";
	}
	
	@PostMapping(value = "/register")
	public String emailVerify(ModelMap model, @ModelAttribute("data")User user, @RequestParam String email) {
		String emailRegisterString = userService.register(email);
		System.out.println(emailRegisterString);
		if(emailRegisterString.equals("0")) {
			userService.addUserDetail(user);
			System.out.println(user);
			model.addAttribute("sendEmail", email);
			return "EmailConfirmation";
		} else {
			model.addAttribute("ExistEmail", "*Email already registered*");
			System.out.println("Email already registered");
			return "Register";
		}
	}
	
	@GetMapping(value = "/thankyou")
	public String thankYou() {
		return "ThankYouRegister";
	}
	
	
	// Login
	@GetMapping(value = "/login")
	public String login(Model model, String error) {
		if(error != null) {
            System.out.println(error);
            model.addAttribute("errorLogin", "Your email or password is wrong");
        }
		return "Login";
	}
	
	
	// Forget password
	@GetMapping(value = "/forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	@GetMapping(value = "/forgetverify")
	public String forgetVerify(@RequestParam("emailForgotPass") String email, HttpSession session) {
		session.setAttribute("emailForget", email);
		return "ForgetVerify";
	}

	@GetMapping(value = "/resetpassword")
	public String resetPassword() {
		return "ResetPassword";
	}
	
	@PostMapping(value = "/resetpassword")
	public String resetPass(@RequestParam("emailForgot")String fEmail,
			@RequestParam("newPass") String newPass) {
		System.out.println(newPass);
		User user = userService.emailForgetPass(fEmail);
		user.setPassword(newPass);
		userService.updatePass(user);
		System.out.println(user);
		return "redirect:login";
	}
	
	
	//Home
	@GetMapping(value = "/home")
	public ModelAndView home(@AuthenticationPrincipal ApplicationUserDetail userDet, HttpSession session, @ModelAttribute("postThread")Thread thread) {
		String email = userDet.getUsername();
		User us= userService.login(email);
		
		session.setAttribute("id_user", us.getId_user());
		session.setAttribute("role", us.getRole());
		session.setAttribute("username", us.getUsername());
		session.setAttribute("email", us.getEmail());
		session.setAttribute("fname", us.getFirstName());
		session.setAttribute("lname", us.getLastName());
		session.setAttribute("address", us.getAddress());
		session.setAttribute("contact", us.getContact());
		session.setAttribute("password", us.getPassword());
		
		List<Thread> tdata= jtService.showAllThreads();
//		System.out.println(tdata);
		
		return new ModelAndView("Home", "dataT", tdata);
	}

	
	//Search Profile
	@GetMapping(value = "/searchprofile")
	public String searchProfile() {
		return "ViewProfile";
	}
	@PostMapping(value = "/profilesearch")
	public ModelAndView profileSearch(@ModelAttribute("singleProfile")User user) {
		String searchname=user.getUsername();
		List<User> uu=userService.showUser(searchname);
		System.out.println(uu);
	return new ModelAndView("SearchProfile","testS", uu);
	}
	@PostMapping(value = "/userprofilesearch")
	public ModelAndView userProfileSearch(@ModelAttribute("singleProfile")User user) {
		String searchname=user.getUsername();
		List<User> uu=userService.showUser(searchname);
		
	return new ModelAndView("UserSearch","testS", uu);
	}
	
	
	// Show All User Profile
	@GetMapping(value = "/searchviewprofile")
	public ModelAndView viewProfile(@ModelAttribute("singleProfile")User user) {
		List<User> udata= userService.showwAllUser();
		System.out.println(udata);
		return new ModelAndView("ViewProfile", "testV", udata);
	}
	
	@GetMapping(value = "/viewsearchprofile")
	public ModelAndView userViewProfile(@ModelAttribute("singleProfile")User user) {
		List<User> udata= userService.showwAllUser();
		System.out.println(udata);
		return new ModelAndView("UserViewProfile", "testV", udata);
	}
	
	
	//Delete User
	@GetMapping(value = "/deleted/{id_user}")
	public String deleteUser (@PathVariable("id_user")Integer id) {
		userService.deleteData(id);
		return "redirect:/viewprofile";
	}
	
	
	//Update Profile
	@GetMapping(value = "/update/{id_user}")
	public ModelAndView update(@PathVariable("id_user")Integer id) {
		User u=userService.SearchUser(id);
		return new ModelAndView ("UpdateProfile", "viewProfile", u);
	}
	
	@PostMapping(value = "/update/dataupdate")
	public String updateData(@RequestParam("uId")Integer  id,
		@RequestParam("uUsername") String username,
		@RequestParam("uEmail") String email,
		@RequestParam("uFirstName") String firstName,
		@RequestParam("uLastName") String lastName,
		@RequestParam("uPassword") String password,
		@RequestParam("uAddress") String address,
		@RequestParam("uContact") String contact,	
		@RequestParam("uRole")String role) {
		
		System.out.println(id+" "+username + " " + "Updated");
		User u=new User(id, username, email, firstName, lastName, password, address, contact, role);
		userService.updateUserDetail(u);

		return "redirect:/home";
	}
	
	//ViewOwnProfile
	@GetMapping(value = "/viewprofile")
	public String updateProfile() {
		return "UserUpdateProfile";
	}

	
	// Bulk Email
	@GetMapping(value = "/bulkemail")
	public ModelAndView bulkEmail() {
		List<BulkEmail> showEmail = emailService.showAllEmail();
		System.out.println(showEmail);
		return new ModelAndView("BulkEmail", "showE", showEmail);
	}
	
	@GetMapping(value="/sendemail")
	public String emailBulk(@ModelAttribute("sendEmail") BulkEmail email) {
		return "SendBulk";
	}


	@PostMapping(value = "/sendbulkemail")
	public String sendBulk(@ModelAttribute("sendEmail")BulkEmail email) {
		String to=(String) email.getSendTo();
		String[] receivers = to.split(", ");
		
		for(int i = 0; i < receivers.length; i++) {
			BulkEmail sendEmail = new BulkEmail();
			
			sendEmail.setSendTo(receivers[i]);
			sendEmail.setSubject(email.getSubject());
			sendEmail.setMessage(email.getMessage());
			sendEmail.setUser(email.getUser());
			
			emailService.addEmail(sendEmail);
			emailService.sendEmail(receivers[i], sendEmail.getSubject(), sendEmail.getMessage());
		}
		return "EmailSent";
	}
	
	
	//Message
	@GetMapping(value = "/chat")
	public String chat() {
		return "Message";
	}
	
	//Jobs List and Post
	@GetMapping(value = "/jobs")
	public ModelAndView viewJobs() {
		List<Jobs> showJobs = jtService.showAllJobs();
		System.out.println(showJobs);
		return new ModelAndView("Jobs", "showJ", showJobs);
	}
	
	@GetMapping(value = "/jobsadmin")
	public ModelAndView jobsAdmin() {
		List<Jobs> showJobs = jtService.showAllJobs();
//		System.out.println(showJobs);
		return new ModelAndView("JobsAdmin", "showJ", showJobs);
	}
	
	@GetMapping(value = "/jobspost")
	public String jobsPost(@ModelAttribute("postJobs")Jobs jobs) {
		System.out.println("AdminJobs");
		return "JobsPost";
	
	}
	
	@PostMapping(value = "/jobsposted")
	public String jobsPosted(@ModelAttribute("postJobs")Jobs jobs) {
		jtService.addJobs(jobs);
		System.out.println("Posted");
		return "redirect:/jobsadmin";
	}
	
	//Delete Jobs
	@GetMapping(value = "/deleteJobs/{jobsId}")
	public String deleteJobs (@PathVariable("jobsId")Integer id) {
		jtService.deleteJobs(id);
		return "redirect:/jobsadmin";
	}
	
	//Thread
	@PostMapping(value = "/threadposted")
	public String threadPosted(@ModelAttribute("postThread")Thread thread) {
		jtService.addThread(thread);
		return "redirect:/home";
	}
	
	//ApplyJobs
	@PostMapping(value = "/apply")
	public String jobsApplied(@ModelAttribute("applyJobs")Apply apply, HttpSession session) {
		System.out.println(apply);
		int user = 	(Integer) session.getAttribute("id_user");
		User u = new User();
		u.setId_user(user);
		apply.setUserA(u );
		applyService.addApply(apply);
		System.out.println("Applied");
		return "redirect:/jobs";
	}
	
}



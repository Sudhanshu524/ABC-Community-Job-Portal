//Bean User
//As Data Transfer Object (DTO)

package com.example.demo.beans;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int id_user;
	private String username;
	private String email;
	private String firstName;
	private String lastName;
	private String password;
	private String address;
	private String contact;
	private String role;
	
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<BulkEmail> emailBulk;
	
	@OneToMany(mappedBy = "userJ", cascade = CascadeType.ALL)
	private List<Jobs> jobs;
	
	@OneToMany(mappedBy = "userT", cascade = CascadeType.ALL)
	private List<Thread> thread;

	@OneToMany(mappedBy = "userA", cascade = CascadeType.ALL)
	private List<Apply> apply;

	public User(){
		
	}

	public User(int id_user, String username, String email, String firstName, String lastName, String password,
			String address, String contact, String role) {
		super();
		this.id_user = id_user;
		this.username = username;
		this.email = email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.address = address;
		this.contact = contact;
		this.role = role;
	}
	
	public List<BulkEmail> getEmailBulk() {
		return emailBulk;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [id_user=" + id_user + ", username=" + username + ", email=" + email + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", password=" + password + ", address=" + address + ", contact=" + contact
				+ ", role=" + role + "]" + "\n";
	}

	
}

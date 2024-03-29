package com.hcl.Boot.Model;

import org.springframework.stereotype.Repository;


@Repository 
public class User {

	private int id;
	private String username;
	private String address;
	private String email;
	private String phone;
	private String password;
	
	
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public User(int id, String username, String address, String email, String phone, String password) {
		
		this.id = id;
		this.username = username;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", address=" + address + ", email=" + email + "]";
	}
	
	public User() {
		
	}
	
}

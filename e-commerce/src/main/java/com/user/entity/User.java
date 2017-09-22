package com.user.entity;

import javax.persistence.Column;


import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class User {
	@Column
	private String fname;
	
	@Column
	private String lname;
	
	@Column
	private String gender;
	
	@Id
	private String email;
	
	@Column
	private String password;
	
	@Column
	private String cnfrmpass;
	
	@Column
	private String dob;
	
	@Column
	private String phno;

	@Column
	private String address;
	
	@Column
	private String pin;
	
	@Column
	private String state;
	
	@Column
	private String country;

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCnfrmpass() {
		return cnfrmpass;
	}

	public void setCnfrmpass(String cnfrmpass) {
		this.cnfrmpass = cnfrmpass;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getPhno() {
		return phno;
	}

	public void setPhno(String phno) {
		this.phno = phno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	


	

	

	
	
	
	
	
	
}
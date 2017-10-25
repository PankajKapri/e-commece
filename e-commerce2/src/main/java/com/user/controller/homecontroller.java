package com.user.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homecontroller {
	@RequestMapping(value="Login")
	public String Login()
	{
		return "Loginpage";
	}
	@RequestMapping("/OrderConfirm")
	public String ModeOfPayment()
	{
		return "Mode of payment";
	}
	@RequestMapping("/Thankyou")
	public String ThankYou()
	{
		return "ThankYou";
	}
	@RequestMapping("/Loginerr")
	public String Loginerr()
	{
		return "LoginErr";
	}
	
}

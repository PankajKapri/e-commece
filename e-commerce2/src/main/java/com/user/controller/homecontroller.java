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
	
	
	@RequestMapping(value="Home")
	public String Home()
	{
	  return "UserProductPage";
	}
}

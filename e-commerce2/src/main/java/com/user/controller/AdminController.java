package com.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


 @Controller
 public class AdminController {
	@RequestMapping(value="admin")
	public String admin()
	{
		return "Admin";
	}

}

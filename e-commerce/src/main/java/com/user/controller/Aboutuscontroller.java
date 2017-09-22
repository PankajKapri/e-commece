package com.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Aboutuscontroller {
	
	@RequestMapping(value="aboutus")
public String aboutus()
{
		return "aboutus";
}
}

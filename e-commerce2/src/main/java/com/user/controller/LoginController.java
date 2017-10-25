package com.user.controller;



import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.user.DAO.UserDAO;

@Controller
public class LoginController {
	@Autowired
	UserDAO userdao;
	@RequestMapping(value = "/loginsuccess")
	public String login_session_attributes(HttpSession session,Model model) 
	{
		//System.out.println("Hello");
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		
		String role="ROLE_USER";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 session.setAttribute("UserLoggedIn", "true");
		    	 session.setAttribute("username", userid);
		    	 page="UserProductPage";		    	 
		    	 break;
		     }
		     else 
		     {
		    	 session.setAttribute("LoggedIn", "true");
		    	 session.setAttribute("Administrator", "true");
		    	 page="Admin";
		    	 break;
		    }
		}
		return page;
	}



}

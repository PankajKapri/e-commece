package com.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewProduct {
	@RequestMapping(value="Helmet")
	public String HelmentDetails()
	{
		return "ViewProduct";
	}
    @RequestMapping(value="RydingGloves")
    public String GlovesDetail()
    {
    	return "ViewProduct2";
    }
    @RequestMapping(value="FaceMask")
    public String MaskDetails()
    {
    	return "ViewProduct3";
    }
}

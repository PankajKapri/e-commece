package com.user.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.user.DAO.SupplierDAO;
import com.user.entity.Supplier;
@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierdao;
	@RequestMapping(value="Supplier")
	public ModelAndView addsupplier(@ModelAttribute("supp")Supplier supplier)
	{
		//userdao.addsupplier(supplier);
		ModelAndView mv = new ModelAndView("supplier");
		return mv;
	}

	@RequestMapping(value="SaveSupplier",method=RequestMethod.POST)
	public String addsupplier(Supplier supplier, Model model)
	{
		supplierdao.addsupplier(supplier);
		model.addAttribute("suplist", this.supplierdao.getSupplierList());
		return "Admin";
		
	}


}

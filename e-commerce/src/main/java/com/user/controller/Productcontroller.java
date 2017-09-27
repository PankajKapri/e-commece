package com.user.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.user.DAO.CategoryDAO;
import com.user.DAO.ProductDAO;
import com.user.DAO.SupplierDAO;
import com.user.DAO.UserDAO;
import com.user.entity.Category;
import com.user.entity.Product;
import com.user.entity.Supplier;
//import com.user.entity.*;

@Controller
public class Productcontroller {
	
	@Autowired
	ProductDAO productdao;
	@Autowired
	CategoryDAO categorydao;
	@Autowired
	SupplierDAO supplierdao;
@RequestMapping(value="Product")
public String getProductPage(@ModelAttribute("product") Product product, Model model)
{
	productdao.addproduct(product);
	model.addAttribute("catlist",this.categorydao.getCategoryList());
	List<Supplier> suplist=supplierdao.getSupplierList();
	System.out.println("supplier list in controller------------------>"+suplist);	
	model.addAttribute("suplist",suplist);
	return "product";
}

		
	
}


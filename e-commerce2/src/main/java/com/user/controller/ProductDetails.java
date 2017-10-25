package com.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.user.DAO.ProductDAO;
import com.user.entity.Product;

@Controller

public class ProductDetails {
	@Autowired
	ProductDAO productdao;
	
	@RequestMapping("/Apple")
	public String allproduct(Model model)
	{
		List<Product> productlist = productdao.getproductList();
		model.addAttribute("productlist", productlist);
		return "ViewProduct";
		
	}
	
	@RequestMapping("/productdescription/{id}")
	public String getdescription(@PathVariable("id")int id  ,Model model)
	{
		Product product=productdao.EditProduct(id);
		model.addAttribute("product", product);
		return "productdescription";
		
	}
	@RequestMapping("returnproduct")
	public String returnproduct(Model model)
	{
		List<Product> productlist = productdao.getproductList();
		model.addAttribute("productlist", productlist);
		
		return "ViewProduct";
		
	}
}

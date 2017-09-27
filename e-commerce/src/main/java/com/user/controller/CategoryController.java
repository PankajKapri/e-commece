package com.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.user.DAO.CategoryDAO;
import com.user.DAO.SupplierDAO;
import com.user.entity.Category;
@Controller
public class CategoryController {
	@Autowired
	CategoryDAO categorydao;

	//getting add category page
	@RequestMapping(value="Category")
	public ModelAndView getCategoryPage(@ModelAttribute("categ")Category customer)
	{
		
		ModelAndView mv = new ModelAndView("customer");
		return mv;
	}


	//saving category object
	@RequestMapping(value="saveCategory",method=RequestMethod.POST)
	public String addCategory(Category category, Model model)
	{   
	    categorydao.addCategory(category);
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		return "Admin";
	}


}

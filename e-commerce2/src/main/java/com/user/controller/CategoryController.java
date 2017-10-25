package com.user.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.user.DAO.CategoryDAO;
import com.user.entity.Category;
@Controller
public class CategoryController {
	@Autowired
	CategoryDAO categorydao;

	//getting add category page
	@RequestMapping(value="Category")
	public ModelAndView getCategoryPage(@ModelAttribute("category")Category category)
	{
		
		ModelAndView mv = new ModelAndView("Category","catlist",this.categorydao.getCategoryList());
		return mv;
	}


	//saving category object
	@RequestMapping(value="saveCategory",method=RequestMethod.POST)
	public String addCategory(Category category, Model model)
	{   
	    categorydao.addCategory(category);
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		return "Category";
	}
	//Deleting category
	@RequestMapping(value="deletecat")
	public String deleteCatlist(@RequestParam("cid") int catid,Model model)
	{
		
		categorydao.deleteCategory(catid);
		model.addAttribute("category",new Category());
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		return "Category";
		
	}
	//get category
	@RequestMapping("/Editcat")
	public String getCategory(@RequestParam("cid") int catid,Model model)
	{
		Category category=categorydao.editCategory(catid);
		model.addAttribute("edit",category);
		model.addAttribute("category",new Category());
		return "CategoryEdit";
	}
	//Update category
	@RequestMapping(value="updatecat",method=RequestMethod.POST)
	public String updateCategory(Model model,Category category)
	{
		categorydao.updateCategory(category);
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		model.addAttribute("category",new Category());
		return "Category";
	}

}

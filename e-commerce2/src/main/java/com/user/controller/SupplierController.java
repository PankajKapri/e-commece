package com.user.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.user.DAO.SupplierDAO;
import com.user.entity.Supplier;
@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierdao;
	@RequestMapping(value="Supplier")
	public ModelAndView addsupplier(@ModelAttribute("supplier")Supplier supplier)
	{
		//userdao.addsupplier(supplier);
		ModelAndView mv = new ModelAndView("supplier","suplist", this.supplierdao.getSupplierList());
		return mv;
	}

	@RequestMapping(value="SaveSupplier",method=RequestMethod.POST)
	public String addsupplier(Supplier supplier, Model model)
	{
		supplierdao.addsupplier(supplier);
		model.addAttribute("suplist", this.supplierdao.getSupplierList());
		return "supplier";
		
	}
  @RequestMapping("/deletesupp")
  public String DeleteSupplier(@RequestParam("sid") String supplierid,Model model )
  {
	  supplierdao.deleteSupplier(supplierid);
	  model.addAttribute("supplier",new Supplier());
	  model.addAttribute("suplist", this.supplierdao.getSupplierList());
	  return "supplier";

	  
  }//get Supplier
  @RequestMapping("/Editsupp")
  public String getsupplier(@RequestParam("sid") String supplierid,Model model)
  {
	  Supplier supplier = supplierdao.getSupplier(supplierid);
	  model.addAttribute("editsup",supplier);
	  model.addAttribute("supplier", new Supplier());
	  return "UpdateSupplier";
  }
  //edit&update
  @RequestMapping(value="updatesupp",method=RequestMethod.POST)
  public String UpdateSupplier(Supplier supplier,Model model)
  {
	  supplierdao.UpdateSupplier(supplier);
	  model.addAttribute("suplist", this.supplierdao.getSupplierList());
	  return "supplier";
	 
  }

}

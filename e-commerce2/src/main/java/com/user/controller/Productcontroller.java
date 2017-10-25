package com.user.controller;







import java.io.IOException;


import java.nio.file.Path;

import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.user.DAO.CategoryDAO;
import com.user.DAO.ProductDAO;
import com.user.DAO.SupplierDAO;
import com.user.entity.Product;
import com.user.entity.Supplier;


@Controller
public class Productcontroller {
	
	
	@Autowired
	ProductDAO productdao;
	@Autowired
	CategoryDAO categorydao;
	@Autowired
	SupplierDAO supplierdao;
	
	@RequestMapping(value="Product")
	public String getProductList(@ModelAttribute("product") Product product, Model model)
{
	
	model.addAttribute("prolist",this.productdao.getproductList());
    model.addAttribute("catlist",this.categorydao.getCategoryList());
	List<Supplier> suplist=supplierdao.getSupplierList();
	System.out.println("supplier list in controller------------------>"+suplist);	
	model.addAttribute("suplist",suplist);
	
	
		return "product";
}
	@RequestMapping(value="/SaveProduct",method=RequestMethod.POST)
	public String NewMethod(@Valid @ModelAttribute("product")Product product,Model model,BindingResult result)
	{  
		if(result.hasErrors())
	{
		return "product";
	}
		productdao.addproduct(product);
		model.addAttribute("product",new Product());//will remove data after submit
		model.addAttribute("prolist",this.productdao.getproductList());
	    model.addAttribute("catlist",this.categorydao.getCategoryList());
	    model.addAttribute("suplist", this.supplierdao.getSupplierList());
	    MultipartFile image = product.getImage();
		Path path=	Paths.get("C:\\Users\\HP\\workspace-new\\e-commerce2\\src\\main\\webapp\\resources\\"+product.getId()+".jpg");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "product";
		
	}//delete 
@RequestMapping("/deletepro")
public String deleteProduct(@RequestParam("pid")int id,Model model)
{
	productdao.deletePro(id);
	model.addAttribute("product",new Product());
    model.addAttribute("prolist",this.productdao.getproductList());
    model.addAttribute("catlist",this.categorydao.getCategoryList());
	model.addAttribute("suplist",this.supplierdao.getSupplierList());

	return "product";
	
}
@RequestMapping("Editpro")
public String getProduct(@RequestParam("pid") int id,Model model)
{
	Product product=productdao.EditProduct(id);
	model.addAttribute("edit",product);
	model.addAttribute("product",new Product());
	return "Editproduct";
}
//Update category
@RequestMapping(value="updatepro",method=RequestMethod.POST)
public String updateProduct(Model model,Product product)
{
	productdao.UpdateProduct(product);
	 model.addAttribute("prolist",this.productdao.getproductList());	
     model.addAttribute("product",new Product());
	return "product";
}
}

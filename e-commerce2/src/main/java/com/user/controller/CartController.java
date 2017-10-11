/*package com.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.user.DAO.CartDAO;
import com.user.entity.Cart;

@Controller
public class CartController {
	@Autowired
	CartDAO cartDAO;
	//performs navigation 
	@RequestMapping("/Cart")
	public String ShowCart()
	{
		return "Cart";
	}
	@RequestMapping(value="SacveCart")
	public String addCart(Cart cart,Model model)
	{
		cartDAO.addCart(cart);
		model.addAttribute("cart",this.cartDAO.getCartList());
		return "Caart";
	}
	

}*/

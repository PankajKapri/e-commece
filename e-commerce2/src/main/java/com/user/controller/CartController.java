package com.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.user.DAO.CartDAO;
import com.user.DAO.ProductDAO;
import com.user.entity.Cart;
import com.user.entity.Product;

@Controller
public class CartController {
@Autowired
CartDAO cartDAO;
@Autowired
ProductDAO productDAO;
@RequestMapping("Cart")
public String getcart( HttpSession session,Model model)
{
	String username=(String)session.getAttribute("username");
	List<Cart> list=cartDAO.getCartItems(username);
	model.addAttribute("cartitems", list);
	return "Cart";
	
}

@RequestMapping("/addcart/{id}")
public String AddToCart(@PathVariable("id") int id,@RequestParam("quantity") int quantity,HttpSession session,Model model)
{
	Cart cart = new Cart();
	String username = (String)session.getAttribute("username");
	cart.setCartid(1001);
	cart.setId(id);
	cart.setQuantity(quantity);
	cart.setStatus("N");
	cart.setUsername(username);
	Product product = productDAO.EditProduct(id);
	cart.setName(product.getName());
	cart.setPrize(product.getPrize());
	cartDAO.addToCart(cart);
	model.addAttribute("cart",new Cart());
	List<Cart> list=cartDAO.getCartItems(username);
	model.addAttribute("cartitems",list);
	return "Cart";
}
@RequestMapping("/deleteCartItem/{citemid}")
public String DelteCartItems(@PathVariable("citemid")int citemid,HttpSession httpSession,Model model)
{   
	Cart cart = (Cart)cartDAO.EditCartItems(citemid);
    cartDAO.DeleteCartItems(cart);
    String username=(String)httpSession.getAttribute("username");
    List<Cart> list=cartDAO.getCartItems(username);
    model.addAttribute("cartitems",list);
	return "Cart";
}
@RequestMapping("/checkout")
public String orderConfirm(HttpSession session,Model m)
{
	String username=(String)session.getAttribute("username");
	List<Cart> list=cartDAO.getCartItems(username);
	
	int grandtotal=0;
	for(Cart cart:list)
	{
		grandtotal=grandtotal+(cart.getQuantity()*cart.getPrize());
	}
	m.addAttribute("grandtotal", grandtotal);
	m.addAttribute("cartitems", list);
	return "OrderProcess";
	
}

	




}

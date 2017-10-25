package com.user.DAO;

import java.util.List;
import com.user.entity.Cart;

public interface CartDAO {
	public void addToCart(Cart cartitem);
	public List<Cart> getCartItems(String username);
	public void DeleteCartItems(Cart cart);
	public Cart EditCartItems(int citemid);

}

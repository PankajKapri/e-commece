package com.user.DAO;
import java.util.List;

import com.user.entity.Cart;

public interface CartDAO {
	
	public void addCart(Cart cart);
	public List<Cart> getCartList();

}

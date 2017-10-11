package com.user.DAO;

import java.util.List;


import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.entity.Cart;
import com.user.entity.Category;

@Repository
public class CartDAOImpl {
	@Autowired
	SessionFactory sessionFactory;
	
	public void addCart(Cart cart)
	{
		try{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(cart);
			trans.commit();
			session.flush();
			session.close();		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	public List<Cart> getCartList()
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		List<Cart> cart = session.createQuery("from Cart").list();
		trans.commit();
		session.flush();
		session.close();
		return cart;
		
	}
	
	

	
	
	
}

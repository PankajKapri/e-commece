package com.user.DAO;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.entity.Cart;


@Repository
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	SessionFactory sessionFactory;
		public void addToCart(Cart cartitem)
	{
			try
			{
				Session session=sessionFactory.openSession();
				Transaction trans=session.beginTransaction();
				session.save(cartitem);
				trans.commit();
				session.flush();
				session.close();
			}
			
			catch(Exception ex)
			{
				System.out.println("Error="+ex);
			}
		}
	
	public List<Cart> getCartItems(String username)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		Query query=session.createQuery("from Cart where username=:username and status='N'");
		query.setParameter("username",username);
		@SuppressWarnings("unchecked")
		List<Cart> list=query.list();
		trans.commit();
		session.flush();
		session.close();
		return list;
	}
	public void DeleteCartItems(Cart cart)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
	    session.delete(cart);
		trans.commit();
		session.flush();
		session.close();
	}
	public Cart EditCartItems(int citemid)
	{

		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		Cart cart=(Cart)session.get(Cart.class,citemid);
		trans.commit();
		session.flush();
		session.close();
		return cart;
	}
}


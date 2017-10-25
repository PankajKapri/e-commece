package com.user.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.entity.Category;
import com.user.entity.Product;

@Repository
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	SessionFactory sessionFactory;
	public void addproduct(Product product)
	{
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(product);
			trans.commit();
			session.flush();
			session.close();	
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	public List<Product> getproductList(){
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		List<Product> prolist = session.createQuery("from Product").list();
		trans.commit();
		session.flush();
		session.close();
		return prolist;
		
	}
	public void deletePro(int id)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		Product product = (Product)session.get(Product.class, id);
		session.delete(product);
		trans.commit();
		session.flush();
		session.close();
		
		
	}
	public Product EditProduct(int id)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		Product product=(Product)session.get(Product.class,id);
		trans.commit();
		session.flush();
		session.close();
		return product;
	}
	public void UpdateProduct(Product product)
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.update(product);
		trans.commit();
		session.flush();
		session.close();
	}
	
	
	}

	


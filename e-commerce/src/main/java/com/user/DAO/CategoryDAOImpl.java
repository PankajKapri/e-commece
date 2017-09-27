package com.user.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.entity.Category;


@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	SessionFactory sessionFactory;
	public void addCategory(Category category)
	{
	try
	{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(category);
		trans.commit();
		session.flush();
		session.close();
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	}
	public List<Category> getCategoryList(){
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		List<Category> catlist = session.createQuery("from Category").list();
		trans.commit();
		session.flush();
		session.close();
		return catlist;
		
	}


}

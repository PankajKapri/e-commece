package com.user.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.user.entity.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	SessionFactory sessionFactory;
	public void addsupplier(Supplier supplier) {
	
	try
	   {
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(supplier);
		trans.commit();
		session.flush();
		session.close();
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
}
	public List<Supplier> getSupplierList() {
	    Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		List<Supplier> catlist = session.createQuery("from Supplier").list();
		trans.commit();
		session.flush();
		session.close();
		return catlist;
	

}

}

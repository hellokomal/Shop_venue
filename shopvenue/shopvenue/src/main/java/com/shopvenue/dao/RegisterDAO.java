package com.shopvenue.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopvenue.model.Register;

@Repository
public class RegisterDAO {
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Autowired
	public RegisterDAO(org.hibernate.SessionFactory sessionFactory) {

		this.sessionFactory = sessionFactory;
	}

	public List<Register> getAllregister() {
		Session session=sessionFactory.getCurrentSession();
		System.out.println("hello from DAO");
		//List<Product> productlist=session.createCriteria(Product.class).list();
		List<Register> list=session.createQuery("from Register").list();
		System.out.println(list.isEmpty());
		
		return list;
		
	}

	public void insertRegister(Register r)
	{
		Session session=sessionFactory.getCurrentSession();
		session.save(r);
	}

	public void save(Register r) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(r);
		
	}
}

package com.shopvenue.dao;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopvenue.model.Product;

@Repository
public class ProductDAO {

	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	

	@Autowired
	public ProductDAO(org.hibernate.SessionFactory sessionFactory) {

		this.sessionFactory = sessionFactory;
	}

	public List<Product> getAllProduct() {
		Session session=sessionFactory.getCurrentSession();
		System.out.println("hello from DAO");
		//List<Product> productlist=session.createCriteria(Product.class).list();
		List<Product> list=session.createQuery("from Product").list();
		System.out.println(list.isEmpty());
		/*for (Product product : productlist) {
			System.out.println(product.getCategory()+" hello");
		}*/
		return list;
		
	}

	public void insertProduct(Product p)
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(p);
	}
	
}

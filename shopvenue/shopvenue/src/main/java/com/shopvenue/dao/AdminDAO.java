package com.shopvenue.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shopvenue.model.Product;

@Repository

@Transactional
public class AdminDAO {
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
@Autowired
	public AdminDAO(org.hibernate.SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}
	public List<Product> getAllProduct() {
		Session session=sessionFactory.getCurrentSession();
		
		//List<Product> productlist=session.createCriteria(Product.class).list();
		List<Product> list=session.createQuery("from Product").list();
		System.out.println(list.isEmpty());
		/*for (Product product : productlist) {
			System.out.println(product.getCategory()+" hello");
		}*/
		return list;
		
	}
	
	public List<Product> list() {
		Session f =sessionFactory.getCurrentSession();
		
		List<Product> listProduct=f.createQuery("from Product").list();

		return listProduct;
	}
	public  void saveOrUpdate(Product product) {
		System.out.println("admin dao insert "+product.getBrand());
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		System.out.println("admin dao insert finish");
	}

	
	public void delete(int pid) {
		
		Session f =sessionFactory.getCurrentSession();
		Product p =(Product)f.load(Product.class, new Integer(pid));
		
		f.delete(p);
	}
	public Product get(int pid) {
		Session s=sessionFactory.getCurrentSession();
		Product p=(Product)s.get(Product.class, new Integer(pid));
		return p;
	}

	public void insertProduct(Product p)
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(p);
        session.delete(p);
       

}
}

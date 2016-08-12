package com.shopvenue.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shopvenue.model.Product;

@Repository
public class AdminDAO {
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

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

	public void insertProduct(Product p)
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(p);
        session.delete(p);
       

}
}

package com.shopvenue.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.shopvenue.dao.AdminDAO;
import com.shopvenue.dao.ProductDAO;
import com.shopvenue.model.Product;

@Service
@Transactional
@EnableTransactionManagement
public class AdminService {
	AdminDAO adminDAO;

	
public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}


  @Autowired
public AdminService(AdminDAO adminDAO) {
	this.adminDAO = adminDAO;
}

  public void saveOrUpdate(Product product) {
		
		adminDAO.saveOrUpdate(product);

	}

  public void delete(int pid) {
		
	   adminDAO.delete(pid);

	}
  public Product get(int pid) {
		
		return adminDAO.get(pid);

	}
  public List<Product> list() {
		
		return	adminDAO.list();

		}
 

public List<Product> getAllProduct() {
	
	return adminDAO.getAllProduct();
}



}

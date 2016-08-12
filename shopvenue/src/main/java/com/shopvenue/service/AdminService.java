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



public AdminService(AdminDAO adminDAO) {
	this.adminDAO = adminDAO;
}



public List<Product> getAllProduct() {
	
	return adminDAO.getAllProduct();
}
}

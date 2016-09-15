package com.shopvenue.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.shopvenue.dao.ProductDAO;
import com.shopvenue.model.Product;

@Service
@Transactional
@EnableTransactionManagement
public class ProductService {

	ProductDAO productDAO;

	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}
@Autowired
	public ProductService(ProductDAO productDAO) {
	
		this.productDAO = productDAO;
	}
	
public List<Product> getAllProduct() {
	System.out.println("hello from service");
	return productDAO.getAllProduct();
}
	
}

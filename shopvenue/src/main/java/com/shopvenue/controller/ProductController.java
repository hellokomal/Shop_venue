package com.shopvenue.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.shopvenue.model.Product;
import com.shopvenue.service.ProductService;

@Controller
public class ProductController {

	ProductService productService;
@Autowired
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
@RequestMapping("/Product")
public ModelAndView ProductPage(Model m) {  
    System.out.println("hi");
    List<Product> productlist=productService.getAllProduct();
    String products=new Gson().toJson(productlist);
    m.addAttribute("products", products);
    System.out.println(products);   
    return new ModelAndView("PRODUCTS"); 
    
    
}
	
}

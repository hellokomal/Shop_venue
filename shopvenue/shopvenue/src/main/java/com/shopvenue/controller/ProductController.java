package com.shopvenue.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		List<Product> productlist = productService.getAllProduct();
		String products = new Gson().toJson(productlist);
		m.addAttribute("products", products);
		System.out.println(products);
		return new ModelAndView("PRODUCTS");

	}

	private Product productdetails;

	public Product getProductdetails() {
		return productdetails;
	}

	public void setProductdetails(Product productdetails) {
		this.productdetails = productdetails;
	}

	public ProductService getProductService() {
		return productService;
	}

	@RequestMapping(value = "/products/more/{pid}", method = RequestMethod.POST)
	protected String moreDetails(@PathVariable("pid") String pid, BindingResult result, Model m) {

		return "productdetails";
	}

	Product product;

	@RequestMapping("/More")
	public ModelAndView MorePage(@ModelAttribute("product") Product product) {

		this.product = product;

		return new ModelAndView("productdetails");
	}

	@RequestMapping("/order")
	public String CartPage(@ModelAttribute("product") Product product) {

		return "redirect:/Orderflow";
	}
	
	

	public Product initflow() {
		return product;
	}
}

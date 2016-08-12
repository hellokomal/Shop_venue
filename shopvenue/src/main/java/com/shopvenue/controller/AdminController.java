package com.shopvenue.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.shopvenue.model.Product;
import com.shopvenue.service.AdminService;

@Controller
public class AdminController {
	AdminService adminService;

	@Autowired
	public void setAdminservice(AdminService adminservice) {
		this.adminService = adminservice;
	}

	@RequestMapping("/admin")
	public ModelAndView ProductPage(Model m) {
		System.out.println("hi");
		List<Product> productlist = adminService.getAllProduct();
		String products = new Gson().toJson(productlist);
		m.addAttribute("product", products);

		return new ModelAndView("ADMINPAGE");

	}
}
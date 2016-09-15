package com.shopvenue.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
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

	@RequestMapping(value = "/admin")
	public ModelAndView ProductPage(Model m) {
		System.out.println("hi");
		List<Product> productlist = adminService.getAllProduct();
		String products = new Gson().toJson(productlist);
		m.addAttribute("product", new Product());
m.addAttribute("productlist",adminService.getAllProduct());
	
	ModelAndView mv=new ModelAndView("ADMINPAGE");
	mv.addObject("product",new Product());
	return mv;
	}

@RequestMapping(value="/Admin/product/delete/{pid}")
public String adminRemoveProduct(@PathVariable("pid") Integer pid, Model model) throws Exception {

	try {
		adminService.delete(pid);

	} catch (Exception e) {
		model.addAttribute("message", e.getMessage());
		e.printStackTrace();
	}

	return "redirect:/admin";
}

@RequestMapping("Admin/product/edit/{pid}")
public String editProduct(@PathVariable("pid") int pid, Model model)
{
	System.out.println("editProduct");
	model.addAttribute("product", adminService.get(pid));
	System.out.println(adminService.get(pid).getPname());
	model.addAttribute("productlist", adminService.list());

	return "ADMINPAGE";
}

		
/* This method will call when admin insert new records int the table */
@RequestMapping(value = "/adminInsert", method = RequestMethod.POST)
public String insertProduct(@Validated @ModelAttribute("product") Product product, BindingResult result, Model m,
                              HttpServletRequest request) {
               System.out.print(product.toString());
               
               if (result.hasErrors()) {
                              System.out.println(result.toString());

                              m.addAttribute("listProduct", this.adminService.getAllProduct());

                              return "ADMINPAGE";
               }
               if (product.getPid() == 0) {
                              this.adminService.getAllProduct();

                              this.adminService.saveOrUpdate(product);
                             
               }

               else

               {
                              this.adminService.saveOrUpdate(product);
               }
               MultipartFile file = product.getImage();
       		String originalfile = file.getOriginalFilename();

       		String filepath = request.getSession().getServletContext().getRealPath("/resources/upload_images/");
       		System.out.println(filepath);
       		String filename = filepath + "\\" + product.getPid() + ".jpg";

       		try {
       			byte imagebyte[] = product.getImage().getBytes();
       			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filename));
       			fos.write(imagebyte);
       			fos.close();
       			System.out.println(filename);

       		} catch (IOException e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		} catch (Exception e) {
       			// TODO Auto-generated catch block
       			e.printStackTrace();
       		}
               return "redirect:/admin";
}
}

package com.shopvenue.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.shopvenue.model.Product;
import com.shopvenue.model.Register;
import com.shopvenue.service.RegisterService;

@Controller
public class RegisterController {
	RegisterService registerService;
	@Autowired
		public void setRegisterService(RegisterService registerService) {
			this.registerService = registerService;
		}
	@RequestMapping("/register")
	public ModelAndView registerPage(Model m) {  
	    /*System.out.println("hi");
	    List<Register> registerlist=registerService.getAllRegister();
	    String register=new Gson().toJson(registerlist);*/
	    m.addAttribute("register",new Register() );
	  //  System.out.println(register);   
	    return new ModelAndView("REGISTER"); 
	    
	    
	}
	@RequestMapping(value = "/insertregister", method = RequestMethod.POST)
	public String insertRegister(@Validated @ModelAttribute("register") Register register, BindingResult result, Model m,
	                              HttpServletRequest request) {
	               System.out.print(register.toString());
	               
	               if (result.hasErrors()) {
	                              System.out.println(result.toString());

	                              m.addAttribute("listRegister", this.registerService.getAllRegister());

	                              return "REGISTER";
	               }
	               else

	               {
	                              this.registerService.save(register);
	               }
	               return "redirect:/Home";
	}
	
	}


package com.shopvenue.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class HomeController {
	@RequestMapping("/")
    public ModelAndView HOME() {  
        System.out.println("hi");
        return new ModelAndView("HOME");  
	}
	
	@RequestMapping("/Home")
    public ModelAndView HOME1() {  
        System.out.println("hi");
        return new ModelAndView("HOME");  
	}
	@RequestMapping("/aboutus")
    public ModelAndView aboutus() {  
        System.out.println("hi");
        return new ModelAndView("ABOUTUS");  
	}
	@RequestMapping("/contactus")
    public ModelAndView contactus() {  
        System.out.println("hi");
        return new ModelAndView("CONTACTUS");  
	}
	@RequestMapping("/login")
    public ModelAndView login() {  
        System.out.println("hi");
        return new ModelAndView("LOGIN");  
	}
	/*@RequestMapping("/register")
    public ModelAndView register() {  
        System.out.println("hi");
        return new ModelAndView("REGISTER");  
	}*/
	

}

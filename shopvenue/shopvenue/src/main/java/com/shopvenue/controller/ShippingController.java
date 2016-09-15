package com.shopvenue.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shopvenue.model.Product;
import com.shopvenue.model.ShippingAddress;

@Controller
public class ShippingController {
public ShippingAddress ship;
	public ShippingAddress getShip() {
	return ship;
}
public void setShip(ShippingAddress ship) {
	this.ship = ship;
}
	public ShippingAddress getShipping(){
		return new ShippingAddress();
	}
	@RequestMapping("/confirmationdetails")
	public ModelAndView MorePage(@ModelAttribute("shippingaddress") ShippingAddress shippingaddress) {

		this.ship = shippingaddress;

		return new ModelAndView("confirmationdetails");
	}

}

package com.shopvenue.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.shopvenue.dao.RegisterDAO;
import com.shopvenue.model.Product;
import com.shopvenue.model.Register;
@Service
@Transactional
@EnableTransactionManagement
public class RegisterService {
	RegisterDAO registerDAO;

	public void setRegisterDAO(RegisterDAO registerDAO) {
		this.registerDAO = registerDAO;
	}
@Autowired
	public RegisterService(RegisterDAO registerDAO) {
	
		this.registerDAO = registerDAO;
	}
	
public List<Register> getAllRegister()
{
	System.out.println("hello from service");
	return registerDAO.getAllregister();
}
public void save(Register register) {
	
	registerDAO.save(register);

}
}

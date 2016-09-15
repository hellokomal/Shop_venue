package handler;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.shopvenue.model.Register;

@Component
public class registrationhandler {
	public Register initFlow()
	{
	return new Register();
	}

	public String validateDetails(Register register , MessageContext messageContext)
	{System.out.println("webflow");
	 String status="success";
	
	 if(register.getFirstname().isEmpty())
	 {
	   messageContext.addMessage(new MessageBuilder().error().source("firstname").defaultText("firstname  cannot be Empty").build());
	   status="failure";
	 }
	 if(register.getLastname().isEmpty())
	 {
	   messageContext.addMessage(new MessageBuilder().error().source("lastname").defaultText("lastname cannot be Empty").build());
	   status="failure";
	 }
	 if(register.getPassword().isEmpty())
	 {
	   messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("password cannot be Empty").build());
	   status="failure";
	 }
	 if(register.getAddress().isEmpty())
	 {
	   messageContext.addMessage(new MessageBuilder().error().source("address").defaultText("address cannot be Empty").build());
	   status="failure";
	 }
	 if(register.getEmail().isEmpty())
		 {
		   messageContext.addMessage(new MessageBuilder().error().source("email").defaultText("email cannot be Empty").build());
		   status="failure";
		 }
	 
	 return status;
	}
}

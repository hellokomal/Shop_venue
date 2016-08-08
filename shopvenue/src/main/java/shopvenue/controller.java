package shopvenue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;  
 

@Controller  

public class controller {
	@RequestMapping("/")
    public ModelAndView HOME() {  
        System.out.println("hi");
        return new ModelAndView("HOME");  
	}
	
	@RequestMapping("/Product")
    public ModelAndView ProductPage() {  
        System.out.println("hi");
        return new ModelAndView("PRODUCTS");  
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
	@RequestMapping("/register")
    public ModelAndView register() {  
        System.out.println("hi");
        return new ModelAndView("REGISTER");  
	}
	
}

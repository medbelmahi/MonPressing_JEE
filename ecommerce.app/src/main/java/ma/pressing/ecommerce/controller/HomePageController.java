package ma.pressing.ecommerce.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomePageController {
	
	
	@RequestMapping(value = { "/", "/index.html", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security + Hibernate Example");
		model.addObject("message", "This is default page!");
		model.setViewName("index");
		return model;

	}
	
	@RequestMapping(value = "/Nos_Services", method = RequestMethod.GET)
	public ModelAndView nosServicesPage(){
		ModelAndView model = new ModelAndView();
		
		model.setViewName("pages/nos_services");
		
		return model;
	}
	
	@RequestMapping(value = "/Nos_Tarifs", method = RequestMethod.GET)
	public ModelAndView nosTarifsPage(){
		ModelAndView model = new ModelAndView();
		
		model.setViewName("pages/nos_tarifs");
		
		return model;
	}
	
	@RequestMapping(value = { "/Contactez_Nous", "/contactez-nous.html" }, method = RequestMethod.GET)
	public ModelAndView contactezNousPage(){
		ModelAndView model = new ModelAndView();
		
		model.setViewName("pages/contact");
		
		return model;
	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security + Hibernate Example");
		model.addObject("message", "This page is for ROLE_ADMIN only!");
		model.setViewName("admin");

		return model;

	}
	
	
	@RequestMapping(value = "/Se_Connecter", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, HttpServletRequest request) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("pages/customer_connexion");

		return model;

	}
	
	// customize the error message
	private String getErrorMessage(HttpServletRequest request, String key) {

		Exception exception = (Exception) request.getSession().getAttribute(key);

		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = "Invalid username and password!";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else {
			exception.printStackTrace();
			error = "Invalid username and password!!!!!!!!!!!!!";
		}

		return error;
	}
	

}

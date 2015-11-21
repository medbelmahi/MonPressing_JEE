package ma.pressing.ecommerce.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ma.pressing.ecommerce.model.enumeration.CityDeMaroc;
import ma.pressing.ecommerce.model.enumeration.CivilityType;
import ma.pressing.ecommerce.web.form.data.CustomerForm;

@Controller
public class HomePageController {
	
	
	
	public static String PAGE_INDEX = "index";
	public static String PAGE_NOS_SERVICE = "pages/nos_services";
	public static String PAGE_NOS_TARIFS = "pages/nos_tarifs";
	public static String PAGE_CONTACT = "pages/contact";
	public static String PAGE_INSCRIPTION = "pages/inscription";
	public static String PAGE_CONNEXION = "pages/customer_connexion";
	
	
	
	@RequestMapping(value = { "/", "/index.html", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security + Hibernate Example");
		model.addObject("message", "This is default page!");
		model.setViewName(PAGE_INDEX);
		return model;

	}
	
	@RequestMapping(value = "/Nos_Services", method = RequestMethod.GET)
	public ModelAndView nosServicesPage(){
		ModelAndView model = new ModelAndView();
		
		model.setViewName(PAGE_NOS_SERVICE);
		
		return model;
	}
	
	@RequestMapping(value = "/Nos_Tarifs", method = RequestMethod.GET)
	public ModelAndView nosTarifsPage(){
		ModelAndView model = new ModelAndView();
		
		model.setViewName(PAGE_NOS_TARIFS);
		
		return model;
	}
	
	@RequestMapping(value = { "/Contactez_Nous", "/contactez-nous.html" }, method = RequestMethod.GET)
	public ModelAndView contactezNousPage(){
		ModelAndView model = new ModelAndView();
		
		model.setViewName(PAGE_CONTACT);
		
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
	
	
	@RequestMapping(value="/Inscription", method = RequestMethod.GET)
	public String inscription(ModelMap model){
		CustomerForm userForm = new CustomerForm();
		
		model.addAttribute("userForm", userForm);

		populateDefaultUserFormAttribute(model);

		return PAGE_INSCRIPTION;
	}
	
	@RequestMapping(value="/NouvelleInscription", method = RequestMethod.POST)
	public String addUserForm(@ModelAttribute("userForm") @Validated CustomerForm userForm, BindingResult result, ModelMap model) {
		
		if(result.hasErrors()){
			populateDefaultUserFormAttribute(model);
			model.addAttribute("userForm", userForm);
			return PAGE_INSCRIPTION;
		}
		
		
		
		return "redirect:";
	}
	
	
	
	private void populateDefaultUserFormAttribute(ModelMap model) {
		Map<String, String> civilityList = new LinkedHashMap<String, String>();
		civilityList.put(CivilityType.MR.toString(), "Monsieur");
		civilityList.put(CivilityType.MRS.toString(), "Madame");
		civilityList.put(CivilityType.MISS.toString(), "Demoiselle");
		model.addAttribute("civilityList", civilityList);
		
		Map<String, String> country = new LinkedHashMap<String, String>();
		country.put(CityDeMaroc.Casablanca.toString(), "Casablanca One");
		model.addAttribute("cityList", country);

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, HttpServletRequest request) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName(PAGE_CONNEXION);

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

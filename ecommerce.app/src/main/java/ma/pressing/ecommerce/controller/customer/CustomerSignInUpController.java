package ma.pressing.ecommerce.controller.customer;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ma.pressing.ecommerce.facade.DefaultCustomerFacade;
import ma.pressing.ecommerce.facade.data.CustomerData;
import ma.pressing.ecommerce.model.enumeration.CityDeMaroc;
import ma.pressing.ecommerce.model.enumeration.CivilityType;
import ma.pressing.ecommerce.web.form.data.CustomerForm;

@Controller
public class CustomerSignInUpController {

	public static String PAGE_INSCRIPTION = "pages/customer_inscription";
	public static String PAGE_CONNEXION = "pages/customer_connexion";
	
	@Autowired
	DefaultCustomerFacade cutomerFacade;
	
	@Resource(name = "customerFormValidator")
	Validator customerFormValidator;
	
	
	@RequestMapping(value="/Inscription", method = RequestMethod.GET)
	public String inscription(ModelMap model){
		CustomerForm userForm = new CustomerForm();
		
		model.addAttribute("userForm", userForm);

		populateDefaultUserFormAttribute(model);

		return PAGE_INSCRIPTION;
	}
	
	@RequestMapping(value="/NouvelleInscription", method = RequestMethod.POST)
	public String addUserForm(@ModelAttribute("userForm") @Validated CustomerForm userForm, BindingResult result, ModelMap model) {
		
		customerFormValidator.validate(userForm, result);
		
		if(result.hasErrors()){
			populateDefaultUserFormAttribute(model);
			model.addAttribute("userForm", userForm);
			return PAGE_INSCRIPTION;
		}
		
		CustomerData customerData = cutomerFacade.addNewCustomer(userForm);
		
		model.addAttribute("customer", customerData);
		
		return PAGE_CONNEXION;
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
		
		Map<String, String> typeCompte = new LinkedHashMap<>();
		typeCompte.put("false", "Particulier");
		typeCompte.put("true", "Professionnel");
		model.addAttribute("typeCompte", typeCompte);

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
			error = "Email ou Mot de passe incorrect !";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else {
			exception.printStackTrace();
			error = "Votre compte est désactivé";
		}

		return error;
	}
	
}
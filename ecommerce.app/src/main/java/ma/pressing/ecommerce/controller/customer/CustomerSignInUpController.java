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

	public static String PAGE_CONNEXION = "pages/customer_connexion";
	public static String PAGE_INSCRIPTION = "pages/customer_inscription";
	
	@Resource(name = "customerFormValidator")
	Validator customerFormValidator;
	
	@Autowired
	DefaultCustomerFacade cutomerFacade;
	
	
	@RequestMapping(value="/NouvelleInscription", method = RequestMethod.POST)
	public String addUserForm(@ModelAttribute("userForm") @Validated final CustomerForm userForm, final BindingResult result, final ModelMap model) {
		
		customerFormValidator.validate(userForm, result);
		
		if(result.hasErrors()){
			
			populateDefaultUserFormAttribute(model);
			model.addAttribute("userForm", userForm);
			return PAGE_INSCRIPTION;
		}
		
		final CustomerData customerData = cutomerFacade.addNewCustomer(userForm);
		
		model.addAttribute("customer", customerData);
		
		return PAGE_CONNEXION;
	}
	
	// customize the error message
	private String getErrorMessage(final HttpServletRequest request, final String key) {

		final Exception exception = (Exception) request.getSession().getAttribute(key);

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
	
	
	
	@RequestMapping(value="/Inscription", method = RequestMethod.GET)
	public String inscription(final ModelMap model){
		final CustomerForm userForm = new CustomerForm();
		
		model.addAttribute("userForm", userForm);

		populateDefaultUserFormAttribute(model);

		return PAGE_INSCRIPTION;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) final String error,
			@RequestParam(value = "logout", required = false) final String logout, final HttpServletRequest request) {

		final ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName(PAGE_CONNEXION);

		return model;

	}
	
	private void populateDefaultUserFormAttribute(final ModelMap model) {
		final Map<String, String> civilityList = new LinkedHashMap<String, String>();
		civilityList.put(CivilityType.MR.toString(), "Monsieur");
		civilityList.put(CivilityType.MRS.toString(), "Madame");
		civilityList.put(CivilityType.MISS.toString(), "Demoiselle");
		model.addAttribute("civilityList", civilityList);
		
		final Map<String, String> country = new LinkedHashMap<String, String>();
		country.put(CityDeMaroc.Casablanca.toString(), "Casablanca One");
		model.addAttribute("cityList", country);
		
		final Map<String, String> typeCompte = new LinkedHashMap<>();
		typeCompte.put("false", "Particulier");
		typeCompte.put("true", "Professionnel");
		model.addAttribute("typeCompte", typeCompte);

	}
	
}
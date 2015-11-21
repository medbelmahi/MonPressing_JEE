package ma.pressing.ecommerce.controller.customer;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ma.pressing.ecommerce.model.enumeration.CityDeMaroc;
import ma.pressing.ecommerce.model.enumeration.CivilityType;
import ma.pressing.ecommerce.web.form.UserLoginForm;
import ma.pressing.ecommerce.web.form.data.CustomerForm;

@Controller
public class CustomerSignInUpController {

	
	@RequestMapping(value="/in", method = RequestMethod.GET)
	public String displayCustomerSignInForm(ModelMap model){
		
		model.addAttribute("customer", new UserLoginForm());
		
		return "customer_sign_in_form";
	}
	
	// show add user form
	@RequestMapping(value = "/customer/add", method = RequestMethod.GET)
	public String showAddUserForm(ModelMap model) {

		//logger.debug("showAddUserForm()");

		CustomerForm userForm = new CustomerForm();
		
		model.addAttribute("userForm", userForm);

		populateDefaultModel(model);

		return "customer_form";

	}
	
	@RequestMapping(value = "/customer/add", method = RequestMethod.POST)
	public String addUserForm(@ModelAttribute("userForm") @Validated CustomerForm userForm, BindingResult result, ModelMap model) {

		//logger.debug("showAddUserForm()");

		if(result.hasErrors()){
			populateDefaultModel(model);
			model.addAttribute("userForm", userForm);
			return "customer_form";
		}
		
		
		return "redirect:";
		
	}
	
	private void populateDefaultModel(ModelMap model) {

		Map<String, String> civilityList = new LinkedHashMap<String, String>();
		civilityList.put(CivilityType.MR.toString(), "Monsieur");
		civilityList.put(CivilityType.MRS.toString(), "Madame");
		civilityList.put(CivilityType.MISS.toString(), "Demoiselle");
		model.addAttribute("civilityList", civilityList);

		Map<String, String> skill = new LinkedHashMap<String, String>();
		skill.put("Hibernate", "Hibernate");
		skill.put("Spring", "Spring");
		skill.put("Struts", "Struts");
		skill.put("Groovy", "Groovy");
		skill.put("Grails", "Grails");
		model.addAttribute("javaSkillList", skill);

		List<Integer> numbers = new ArrayList<Integer>();
		numbers.add(1);
		numbers.add(2);
		numbers.add(3);
		numbers.add(4);
		numbers.add(5);
		model.addAttribute("numberList", numbers);

		Map<String, String> country = new LinkedHashMap<String, String>();
		country.put(CityDeMaroc.Casablanca.toString(), "Casablanca One");
//		country.put("CN", "China");
//		country.put("SG", "Singapore");
		model.addAttribute("cityList", country);
	}
}
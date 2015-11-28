package ma.pressing.ecommerce.controller.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ma.pressing.ecommerce.facade.DefaultCustomerFacade;
import ma.pressing.ecommerce.facade.DefaultProductFacade;
import ma.pressing.ecommerce.facade.data.CustomerData;
import ma.pressing.ecommerce.web.form.data.OrderForm;

@Controller
public class OrderController {

	
	public static String PAGE_DEPOSER_LIGNE = "pages/deposer_linge";
	
	@Autowired
	DefaultProductFacade productFacade;
	
	@Autowired
	DefaultCustomerFacade customerFacade;
	
	
	@RequestMapping(value = { "/deposer_linge.html", "/Deposer_Votre_Ligne" }, method = RequestMethod.GET)
	public ModelAndView deposerVotreLigne(){
		ModelAndView model = new ModelAndView();
		
		model.addObject("productsList", productFacade.getAllProducts());
		model.addObject("orderForm", new OrderForm());
		
		model.setViewName(PAGE_DEPOSER_LIGNE);
		
		return model;
	}
	
	
	@ModelAttribute("customer")
	public CustomerData getCurrentCustomer(){
		return customerFacade.getCurrentCustomer();
	}
}

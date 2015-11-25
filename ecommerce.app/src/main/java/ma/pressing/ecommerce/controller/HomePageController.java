package ma.pressing.ecommerce.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ma.pressing.ecommerce.facade.DefaultCustomerFacade;
import ma.pressing.ecommerce.facade.data.CustomerData;

@Controller
public class HomePageController {
	
	private static final Logger LOG = LoggerFactory.getLogger(HomePageController.class);
	
	public static String PAGE_INDEX = "index";
	public static String PAGE_NOS_SERVICE = "pages/nos_services";
	public static String PAGE_NOS_TARIFS = "pages/nos_tarifs";
	public static String PAGE_CONTACT = "pages/contact";
	public static String PAGE_CE_PROFESSIONNELS = "pages/mp_ce_professionnels";
	
	
	@Autowired
	DefaultCustomerFacade cutomerFacade;
	
	@RequestMapping(value = { "/", "/index.html", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage(ModelAndView model) {

		model.addObject("title", "Spring Security + Hibernate Example");
		model.addObject("message", "This is default page!");
		LOG.info("welcome Page ");
		model.setViewName(PAGE_INDEX);
		return model;

	}
	
	@RequestMapping(value = "/Nos_Services", method = RequestMethod.GET)
	public ModelAndView nosServicesPage(){
		ModelAndView model = new ModelAndView();
		
		model.setViewName(PAGE_NOS_SERVICE);
		
		return model;
	}
	
	@RequestMapping(value = { "/ce_professionnel.html", "/mp_ce_professionnels" }, method = RequestMethod.GET)
	public ModelAndView ceProfePage(){
		ModelAndView model = new ModelAndView();
		
		model.setViewName(PAGE_CE_PROFESSIONNELS);
		
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
	
	
	@ModelAttribute("customer")
	public CustomerData getCurrentCustomer(){
		return cutomerFacade.getCurrentCustomer();
	}
	
	

}

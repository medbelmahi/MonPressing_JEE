package ma.pressing.ecommerce.controller.admin;

import ma.pressing.ecommerce.facade.DefaultEmployerFacade;
import ma.pressing.ecommerce.facade.data.EmployeeData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin/dashboard")
public class DashboardController {

	@Autowired
	DefaultEmployerFacade employerFacade;

	public static final String DASHBOARD_HOME_PAGE = "pages/admin/home_page";

	@RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
	public String getDashboardHomePage(Model model) {
		return DASHBOARD_HOME_PAGE;
	}

	@ModelAttribute("employee")
	public EmployeeData getCurrentEmployee() {
		return employerFacade.getCurrentEmployee();
	}

}

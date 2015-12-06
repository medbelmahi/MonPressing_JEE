package ma.pressing.ecommerce.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin")
public class DashboardController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String dashBoardLogin() {

		return "pages/admin/login";
	}
}

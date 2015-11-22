package ma.pressing.ecommerce.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/Mon_Compte")
public class AccountPageController {
	
	static String PAGE_MY_ORDERS = "pages/mes_orders";
	
	@RequestMapping(value = "/Mes_Commandes", method = RequestMethod.GET)
	public String getMyOrders(Model model){
		
		
		return PAGE_MY_ORDERS;
	}
}

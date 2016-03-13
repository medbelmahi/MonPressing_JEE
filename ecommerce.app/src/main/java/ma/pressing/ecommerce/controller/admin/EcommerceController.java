package ma.pressing.ecommerce.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Mohamed BELMAHI on 05/01/2016.
 */
@Controller
@RequestMapping(value = "/admin/dashboard/ecommerce")
public class EcommerceController {

    public static final String ECOMMERCE_HOME_PAGE = "pages/admin/ecommerce_dashboard";


    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String getDashboardHomePage(Model model) {
        return ECOMMERCE_HOME_PAGE;
    }




}

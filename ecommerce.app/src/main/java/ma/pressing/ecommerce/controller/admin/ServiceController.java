package ma.pressing.ecommerce.controller.admin;

import ma.pressing.ecommerce.web.form.data.ServiceForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Mohamed BELMAHI on 11/01/2016.
 */
@Controller
@RequestMapping(value = "/admin/dashboard/ecommerce/services")
public class ServiceController {

    public static final String ECOMMERCE_SERVICE_PAGE = "pages/admin/ecommerce_services";

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getServicePage(final Model model) {

        return ECOMMERCE_SERVICE_PAGE;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addServicePage(final ModelMap model) {

        ServiceForm serviceForm = new ServiceForm();

        model.addAttribute("serviceForm", serviceForm);

        return ECOMMERCE_SERVICE_PAGE;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addService(@ModelAttribute("serviceForm") @Validated final ServiceForm serviceForm, final BindingResult result, final ModelMap model) {

        if (result.hasErrors()) {

        }


        return ECOMMERCE_SERVICE_PAGE;
    }

}


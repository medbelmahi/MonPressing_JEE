package ma.pressing.ecommerce.controller.admin;

import ma.pressing.ecommerce.facade.DefaultProductFacade;
import ma.pressing.ecommerce.web.form.data.ProductForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Mohamed BELMAHI on 05/01/2016.
 */
@Controller
@RequestMapping(value = "/admin/dashboard/ecommerce/product")
public class ProductController {

    public static final String ECOMMERCE_PRODUCT_PAGE = "pages/admin/ecommerce_products";

    @Autowired
    DefaultProductFacade productFacade;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String productPage(final Model model) {

        model.addAttribute("products", productFacade.getAllProducts());

        return ECOMMERCE_PRODUCT_PAGE;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addProductPage(final ModelMap model) {

        ProductForm productForm = new ProductForm();

        model.addAttribute("productForm", productForm);

        return ECOMMERCE_PRODUCT_PAGE;
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("productForm") @Validated final ProductForm productForm, final BindingResult result, final ModelMap model) {

        if (result.hasErrors()) {

        }


        return ECOMMERCE_PRODUCT_PAGE;
    }
}

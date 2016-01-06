package ma.pressing.ecommerce.service.impl;

import java.util.Date;

import ma.pressing.ecommerce.model.ProductServiceModel;
import ma.pressing.ecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ma.pressing.ecommerce.model.CustomerModel;
import ma.pressing.ecommerce.model.OurServiceModel;
import ma.pressing.ecommerce.model.PriceModel;
import ma.pressing.ecommerce.model.enumeration.CustomerGroup;
import ma.pressing.ecommerce.service.CustomerService;
import ma.pressing.ecommerce.service.PriceService;

@Service
@Transactional
public class PriceServiceImpl implements PriceService {

	@Autowired
	CustomerService customerService;
	
	@Override
	public PriceModel getValidatePrice(final ProductServiceModel productService) {
		final CustomerModel custmerModel = customerService.getCurrentCustomer();
		if (custmerModel != null) {
			for (final PriceModel price : productService.getPrices()) {
				if ((new Date()).before(price.getDateEndValidation())
						&& (new Date()).after(price.getDateBeginValidation())
						&& price.getCustomerGroup().equals(custmerModel.getCustomerGroup())) {
					return price;
				}
			}
		} else {
			for (final PriceModel price : productService.getPrices()) {
				if ((new Date()).before(price.getDateEndValidation())
						&& (new Date()).after(price.getDateBeginValidation())
						&& price.getCustomerGroup().equals(CustomerGroup.B2C)) {
					return price;
				}
			}
		}

		return null;
	}

}

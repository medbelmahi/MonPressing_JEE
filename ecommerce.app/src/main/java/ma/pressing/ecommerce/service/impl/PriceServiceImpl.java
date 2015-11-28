package ma.pressing.ecommerce.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import ma.pressing.ecommerce.model.CustomerModel;
import ma.pressing.ecommerce.model.OurServiceModel;
import ma.pressing.ecommerce.model.PriceModel;
import ma.pressing.ecommerce.model.enumeration.CustomerGroup;
import ma.pressing.ecommerce.service.CustomerService;
import ma.pressing.ecommerce.service.PriceService;

public class PriceServiceImpl implements PriceService {

	@Autowired
	CustomerService customerService;
	
	@Override
	public PriceModel getValidatePrice(final OurServiceModel ourServiceModel) {
		final CustomerModel custmerModel = customerService.getCurrentCustomer();
		if (custmerModel != null) {
			for (final PriceModel price : ourServiceModel.getPrices()) {
				if ((new Date()).before(price.getDateEndValidation())
						&& (new Date()).after(price.getDateBeginValidation())
						&& price.getCustomerGroup().equals(custmerModel.getCustomerGroup())) {
					return price;
				}
			}
		} else {
			for (final PriceModel price : ourServiceModel.getPrices()) {
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

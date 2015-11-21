package ma.pressing.ecommerce.facade.converter;

import ma.pressing.ecommerce.facade.Populator;
import ma.pressing.ecommerce.facade.data.CustomerData;
import ma.pressing.ecommerce.model.CustomerModel;

public class CustomerPopulator implements Populator<CustomerData, CustomerModel>{

	@Override
	public void populate(CustomerData source, CustomerModel target) {
		target.setEmail(source.getEmail());
	}
	
}

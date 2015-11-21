package ma.pressing.ecommerce.facade.converter;

import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.CustomerData;
import ma.pressing.ecommerce.model.CustomerModel;

@Component("customerPopulator")
public class CustomerPopulator implements DefaultPopulator<CustomerModel, CustomerData>{

	@Override
	public void populate(final CustomerModel source, final CustomerData target) {
		target.setEmail(source.getEmail());
	}

}

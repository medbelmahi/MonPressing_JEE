package ma.pressing.ecommerce.facade;

import ma.pressing.ecommerce.facade.data.CustomerData;
import ma.pressing.ecommerce.web.form.data.CustomerForm;


public interface DefaultCustomerFacade {
	
	public CustomerData addNewCustomer(CustomerForm customerForm);
}

package ma.pressing.ecommerce.facade.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultCustomerFacade;
import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.CustomerData;
import ma.pressing.ecommerce.model.AddressModel;
import ma.pressing.ecommerce.model.CustomerModel;
import ma.pressing.ecommerce.model.enumeration.CityDeMaroc;
import ma.pressing.ecommerce.model.enumeration.CivilityType;
import ma.pressing.ecommerce.service.CustomerService;
import ma.pressing.ecommerce.util.PasswordEncoderGenerator;
import ma.pressing.ecommerce.web.form.data.CustomerForm;

@Component("defaultCustomerFacade")
public class DefaultCutomerFacadeImpl implements DefaultCustomerFacade {
	
	@Autowired
	private CustomerService customerService;
	
	@Resource(name="customerPopulator")
	private DefaultPopulator<CustomerModel, CustomerData> customerPopulator;
	
	
	@Override
	public CustomerData addNewCustomer(CustomerForm customerForm) {
		
		CustomerModel customerModel = new CustomerModel();
		AddressModel addressModel = new AddressModel();
		
		customerModel.setEmail(customerForm.getEmail());
		customerModel.setCompletName(customerForm.getCompletName());
		customerModel.setCivility(CivilityType.valueOf(customerForm.getCivility()));
		customerModel.setPassword(PasswordEncoderGenerator.getHashedPassword(customerForm.getPassword()));
		
		addressModel.setCity(CityDeMaroc.valueOf(customerForm.getAddressFrom().getCity()));
		addressModel.setDistrict(customerForm.getAddressFrom().getDistrict());
		addressModel.setPostCode(customerForm.getAddressFrom().getCodePostal());
		addressModel.setStreet(customerForm.getAddressFrom().getStreet());
		addressModel.setTel(customerForm.getAddressFrom().getTel());
		
		customerModel.setAddressModel(addressModel);
		customerModel = customerService.save(customerModel);
		
		CustomerData customerData = new CustomerData();
		customerPopulator.populate(customerModel, customerData);
		
		return customerData;
	}
	
}

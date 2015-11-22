package ma.pressing.ecommerce.facade.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultCustomerFacade;
import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.CustomerData;
import ma.pressing.ecommerce.model.AddressModel;
import ma.pressing.ecommerce.model.CustomerModel;
import ma.pressing.ecommerce.model.UserRole;
import ma.pressing.ecommerce.model.enumeration.CityDeMaroc;
import ma.pressing.ecommerce.model.enumeration.CivilityType;
import ma.pressing.ecommerce.service.AddressService;
import ma.pressing.ecommerce.service.CustomerService;
import ma.pressing.ecommerce.service.UserRoleService;
import ma.pressing.ecommerce.util.PasswordEncoderGenerator;
import ma.pressing.ecommerce.web.form.data.CustomerForm;

@Component("defaultCustomerFacade")
public class DefaultCutomerFacadeImpl implements DefaultCustomerFacade {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private AddressService addressService;
	
	@Resource(name="customerPopulator")
	private DefaultPopulator<CustomerModel, CustomerData> customerPopulator;
	
	@Autowired
	private UserRoleService userRoleService;
	
	
	@Override
	public CustomerData addNewCustomer(CustomerForm customerForm) {
		
		CustomerModel customerModel = new CustomerModel();
		AddressModel addressModel = new AddressModel();
		
		customerModel.setEmail(customerForm.getEmail());
		customerModel.setCompletName(customerForm.getCompletName());
		customerModel.setCivility(CivilityType.valueOf(customerForm.getCivility()));
		customerModel.setPassword(PasswordEncoderGenerator.getHashedPassword(customerForm.getPassword()));
		customerModel.setB2b("true".equals(customerForm.getB2b()));
		
		addressModel.setCity(CityDeMaroc.valueOf(customerForm.getAddressFrom().getCity()));
		addressModel.setDistrict(customerForm.getAddressFrom().getDistrict());
		addressModel.setPostCode(customerForm.getAddressFrom().getCodePostal());
		addressModel.setStreet(customerForm.getAddressFrom().getStreet());
		addressModel.setTel(customerForm.getAddressFrom().getTel());
		
		addressModel = addressService.save(addressModel);
		customerModel.setAddressModel(addressModel);
		customerModel = customerService.save(customerModel);
		
		UserRole userRole = new UserRole();
		userRole.setUser(customerModel);
		if(customerModel.isB2b()){
			userRole.setRole("ROLE_B2B_CUSTOMER");
		}else{
			userRole.setRole("ROLE_B2C_CUSTOMER");
		}
		userRole = userRoleService.save(userRole);
		
		CustomerData customerData = new CustomerData();
		customerPopulator.populate(customerModel, customerData);
		
		return customerData;
	}


	@Override
	public CustomerData getCurrentCustomer() {
		Object user = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (user != null && user instanceof User) {

			String name =((User) user).getUsername(); // get logged in username

			CustomerModel customerModel = customerService.findCustomerByAttribut("email", name);

			if (customerModel != null) {
				CustomerData customerData = new CustomerData();
				customerPopulator.populate(customerModel, customerData);
				
				return customerData;
			}
		}
		return null;
	}
	
}

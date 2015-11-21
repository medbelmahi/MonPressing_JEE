package ma.pressing.ecommerce.service;

import java.util.List;

import ma.pressing.ecommerce.model.CustomerModel;

public interface CustomerService {
	
	public CustomerModel save(CustomerModel customerModel);
	public CustomerModel edit(CustomerModel customerModel);
	public void delete(CustomerModel customerModel);
	public CustomerModel findCustomerById(Long idCustomer);
	public List<CustomerModel> getAllCustomers();
}

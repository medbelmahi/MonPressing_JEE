package ma.pressing.ecommerce.service.impl;

import ma.pressing.ecommerce.dao.CustomerDao;
import ma.pressing.ecommerce.model.CustomerModel;
import ma.pressing.ecommerce.service.CustomerService;
import ma.pressing.ecommerce.service.MyUserDetailsService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDao userDao;

	@Autowired
	private MyUserDetailsService myUserDetailsService;
	
	@Override
	public CustomerModel save(CustomerModel customerModel) {
		customerModel.setEnabled(true);
		return userDao.save(customerModel);
	}

	@Override
	public CustomerModel edit(CustomerModel customerModel) {
		return userDao.edit(customerModel);
	}

	@Override
	public void delete(CustomerModel customerModel) {
		userDao.delete(customerModel.getId());
	}

	@Override
	public CustomerModel findCustomerById(Long idCustomer) {
		return userDao.find(idCustomer);
	}

	@Override
	public List<CustomerModel> getAllCustomers() {
		return userDao.findAll();
	}

	public CustomerDao getUserDao() {
		return userDao;
	}

	public void setUserDao(CustomerDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public CustomerModel findCustomerByAttribut(String attribute, Object value) {
		return userDao.findOneByAttribut(attribute, value);
	}

	@Override
	public CustomerModel getCurrentCustomer() {
		String name = myUserDetailsService.getCurrentUserName();
		if (name != null && StringUtils.isNotEmpty(name)) {
			CustomerModel customerModel = findCustomerByAttribut("email", name);

			if (customerModel != null) {
				return customerModel;
			}
		}
		return null;
	}
	
}

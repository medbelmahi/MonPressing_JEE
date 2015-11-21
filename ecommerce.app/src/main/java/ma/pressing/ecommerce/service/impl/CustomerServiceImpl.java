package ma.pressing.ecommerce.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ma.pressing.ecommerce.dao.CustomerDao;
import ma.pressing.ecommerce.model.CustomerModel;
import ma.pressing.ecommerce.service.CustomerService;

@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDao userDao;
	
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
	
	

}

package ma.pressing.ecommerce.dao.impl;

import org.springframework.stereotype.Repository;

import ma.pressing.ecommerce.dao.CustomerDao;
import ma.pressing.ecommerce.model.CustomerModel;

@Repository("customerDao")
public class DefaultCustomerDao extends DefaultGenericDao<CustomerModel> implements CustomerDao {

	public DefaultCustomerDao() {
		super(CustomerModel.class);
	}

}

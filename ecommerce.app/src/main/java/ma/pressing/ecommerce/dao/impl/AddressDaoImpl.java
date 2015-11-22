package ma.pressing.ecommerce.dao.impl;

import org.springframework.stereotype.Repository;

import ma.pressing.ecommerce.dao.AddressDao;
import ma.pressing.ecommerce.model.AddressModel;

@Repository("addressDao")
public class AddressDaoImpl extends DefaultGenericDao<AddressModel> implements AddressDao {

	public AddressDaoImpl() {
		super(AddressModel.class);
	}

	
}

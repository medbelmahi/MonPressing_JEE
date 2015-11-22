package ma.pressing.ecommerce.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ma.pressing.ecommerce.dao.AddressDao;
import ma.pressing.ecommerce.model.AddressModel;
import ma.pressing.ecommerce.service.AddressService;

@Service("addressService")
@Transactional
public class AddressServiceImpl implements AddressService {

	@Autowired
	AddressDao addressDao;
	
	@Override
	public AddressModel save(AddressModel addressModel) {
		return addressDao.save(addressModel);
	}

	@Override
	public AddressModel edit(AddressModel addressModel) {
		return addressDao.edit(addressModel);
	}

	@Override
	public void delete(AddressModel addressModel) {
		addressDao.delete(addressModel.getId());
	}

	@Override
	public AddressModel findAddressById(Long idAddress) {
		return addressDao.find(idAddress);
	}

	@Override
	public List<AddressModel> getAllAddress() {
		return addressDao.findAll();
	}

}

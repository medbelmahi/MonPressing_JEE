package ma.pressing.ecommerce.service;

import java.util.List;

import ma.pressing.ecommerce.model.AddressModel;

public interface AddressService {
	public AddressModel save(AddressModel addressModel);
	public AddressModel edit(AddressModel addressModel);
	public void delete(AddressModel addressModel);
	public AddressModel findAddressById(Long idAddress);
	public List<AddressModel> getAllAddress();
}

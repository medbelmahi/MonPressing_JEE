package ma.pressing.ecommerce.facade.converter;

import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.AddressData;
import ma.pressing.ecommerce.model.AddressModel;

@Component("addressPopulator")
public class AddressPopulator implements DefaultPopulator<AddressModel, AddressData>{

	@Override
	public void populate(final AddressModel source, final AddressData target) {
		target.setCity(source.getCity().toString());
		target.setDistrict(source.getDistrict());
		target.setPostCode(source.getPostCode());
		target.setStreet(source.getStreet());
		target.setTel(source.getTel());
	}

}

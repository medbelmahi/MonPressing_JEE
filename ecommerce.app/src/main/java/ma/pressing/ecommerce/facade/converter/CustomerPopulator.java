package ma.pressing.ecommerce.facade.converter;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.AddressData;
import ma.pressing.ecommerce.facade.data.CustomerData;
import ma.pressing.ecommerce.model.AddressModel;
import ma.pressing.ecommerce.model.CustomerModel;
import ma.pressing.ecommerce.model.enumeration.CivilityType;

@Component("customerPopulator")
public class CustomerPopulator implements DefaultPopulator<CustomerModel, CustomerData>{
	
	@Resource(name = "addressPopulator")
	DefaultPopulator<AddressModel, AddressData> addressPopulator;
	
	static Map<CivilityType, String> civilityValues = new HashMap<CivilityType, String>();
	static{
		civilityValues.put(CivilityType.MISS, "Demoiselle");
		civilityValues.put(CivilityType.MR, "Monsieux");
		civilityValues.put(CivilityType.MRS, "Madame");
	}
	
	@Override
	public void populate(final CustomerModel source, final CustomerData target) {
		target.setEmail(source.getEmail());
		target.setCivility(civilityValues.get(source.getCivility()));
		target.setCompletName(source.getCompletName());
		target.setB2b(source.isB2b());
		
		AddressData addressData = new AddressData();
		addressPopulator.populate(source.getAddressModel(), addressData);
		
		target.setAddressData(addressData);
	}

}

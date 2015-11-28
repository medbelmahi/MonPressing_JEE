package ma.pressing.ecommerce.service;

import ma.pressing.ecommerce.model.OurServiceModel;
import ma.pressing.ecommerce.model.PriceModel;

public interface PriceService {
	public PriceModel getValidatePrice(OurServiceModel ourServiceModel);
}

package ma.pressing.ecommerce.service;

import ma.pressing.ecommerce.model.PriceModel;
import ma.pressing.ecommerce.model.ProductServiceModel;

public interface PriceService {
	public PriceModel getValidatePrice(ProductServiceModel productServiceModel);
}

package ma.pressing.ecommerce.facade.converter;

import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.ProductData;
import ma.pressing.ecommerce.model.ProductModel;

@Component("productPopulator")
public class ProductPopulator implements DefaultPopulator<ProductModel, ProductData> {

	@Override
	public void populate(final ProductModel source, final ProductData target) {
		
	}

}

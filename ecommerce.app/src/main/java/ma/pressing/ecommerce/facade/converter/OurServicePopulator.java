package ma.pressing.ecommerce.facade.converter;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.OurServiceData;
import ma.pressing.ecommerce.facade.data.PriceData;
import ma.pressing.ecommerce.facade.data.ProductData;
import ma.pressing.ecommerce.model.OurServiceModel;
import ma.pressing.ecommerce.model.PriceModel;
import ma.pressing.ecommerce.model.ProductModel;
import ma.pressing.ecommerce.service.PriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component
public class OurServicePopulator implements DefaultPopulator<OurServiceModel, OurServiceData> {

	@Resource(name="pricePopulator")
	DefaultPopulator<PriceModel, PriceData> pricePopulator;
	
	@Autowired
	PriceService priceService;
	
	@Resource(name="productPopulator")
	DefaultPopulator<ProductModel, ProductData> productPopulator;
	
	@Override
	public void populate(final OurServiceModel source, final OurServiceData target) {
		target.setDescription(source.getDescription());
		target.setLabel(source.getLabel());
		
		final PriceData price = new PriceData();
//		pricePopulator.populate(priceService.getValidatePrice(source), price);
		target.setPrice(price);
		
		final ProductData product = new ProductData();
//		productPopulator.populate(source.getProduct(), product);
		target.setProduct(product);
	}

}

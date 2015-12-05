package ma.pressing.ecommerce.facade.converter;

import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.PriceData;
import ma.pressing.ecommerce.model.PriceModel;

@Component
public class PricePopulator implements DefaultPopulator<PriceModel, PriceData> {

	@Override
	public void populate(final PriceModel source, final PriceData target) {
		
	}

}

package ma.pressing.ecommerce.facade.converter;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.OrderEntryData;
import ma.pressing.ecommerce.facade.data.OurServiceData;
import ma.pressing.ecommerce.model.OrderEntryModel;
import ma.pressing.ecommerce.model.OurServiceModel;

@Component
public class OrderEntryPopulator implements DefaultPopulator<OrderEntryModel, OrderEntryData> {

	@Resource(name = "ourServicePopulator")
	DefaultPopulator<OurServiceModel, OurServiceData> ourServicePopulator;
	
	@Override
	public void populate(final OrderEntryModel source, final OrderEntryData target) {
		target.setPriceValue(source.getPriceValue().doubleValue());
		target.setQuantity(source.getQuantity());
		target.setTotalPrice(source.getTotalPrice().doubleValue());
		
		final OurServiceData ourServiceData = new OurServiceData();
		ourServicePopulator.populate(source.getProductService(), ourServiceData);
		target.setProductService(ourServiceData);
	}

}

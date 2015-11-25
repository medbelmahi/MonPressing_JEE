package ma.pressing.ecommerce.facade.converter;

import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.OrderData;
import ma.pressing.ecommerce.model.OrderModel;

@Component
public class OrderPopulator implements DefaultPopulator<OrderModel, OrderData> {

	@Override
	public void populate(final OrderModel source, final OrderData target) {
		
	}

}

package ma.pressing.ecommerce.facade.converter;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.CustomerData;
import ma.pressing.ecommerce.facade.data.DeliveryModeData;
import ma.pressing.ecommerce.facade.data.OrderData;
import ma.pressing.ecommerce.facade.data.OrderEntryData;
import ma.pressing.ecommerce.model.CustomerModel;
import ma.pressing.ecommerce.model.DeliveryModeModel;
import ma.pressing.ecommerce.model.OrderEntryModel;
import ma.pressing.ecommerce.model.OrderModel;

@Component
public class OrderPopulator implements DefaultPopulator<OrderModel, OrderData> {

	@Resource(name="deliveryModePopulator")
	DefaultPopulator<DeliveryModeModel, DeliveryModeData> deliveryModePopulator;
	
	@Resource(name="customerPopulator")
	DefaultPopulator<CustomerModel, CustomerData> customerPopulator;
	
	@Resource(name="orderEntryPopulator")
	DefaultPopulator<OrderEntryModel, OrderEntryData> orderEntryPopulator;
	
	@Override
	public void populate(final OrderModel source, final OrderData target) {
		target.setCollectingCost(source.getCollectingCost().doubleValue());
		
		DeliveryModeData deliveryModeData = new DeliveryModeData();
		deliveryModePopulator.populate(source.getDeliveryMode(), deliveryModeData);
		target.setDeliveryMode(deliveryModeData);
		
		DeliveryModeData collectionModeData = new DeliveryModeData();
		deliveryModePopulator.populate(source.getCollectingMode(), collectionModeData);
		target.setCollectingMode(collectionModeData);
		
		CustomerData customer = new CustomerData();
		customerPopulator.populate(source.getCustomer(), customer);
		target.setCustomer(customer);
		
		target.setOrderEntries(getOrderEntriesData(source.getOrderEntries()));
		target.setOrderStatus(source.getOrderStatus().toString());
		target.setSalesApplication(source.getSalesApplication().toString());
		target.setTotalPrice(source.getTotalPrice().doubleValue());
		target.setValide(source.isValide());
	}
	
	private List<OrderEntryData> getOrderEntriesData(List<OrderEntryModel> orderEnties){
		List<OrderEntryData> orderEntiesData = new ArrayList<OrderEntryData>();
		
		for(OrderEntryModel entry : orderEnties){
			OrderEntryData orderEntryData = new OrderEntryData();
			orderEntryPopulator.populate(entry, orderEntryData);
			
			orderEntiesData.add(orderEntryData);
		}
		
		return orderEntiesData;
	}

}

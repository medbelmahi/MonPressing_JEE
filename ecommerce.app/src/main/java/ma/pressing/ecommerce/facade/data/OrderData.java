package ma.pressing.ecommerce.facade.data;

import java.util.List;

public class OrderData extends AbstractItemData {
	
	private List<OrderEntryData> orderEntries;
	
	private DeliveryModeData deliveryMode;

	private DeliveryModeData collectingMode;
	
	private CustomerData customer;
	
	private String salesApplication;
	
	private String orderStatus;
	
	private boolean valide;
	
	private Double deliveryCost;
	private Double collectingCost;
	private Double TotalPrice;
	
	
	public List<OrderEntryData> getOrderEntries() {
		return orderEntries;
	}
	public void setOrderEntries(List<OrderEntryData> orderEntries) {
		this.orderEntries = orderEntries;
	}
	public DeliveryModeData getDeliveryMode() {
		return deliveryMode;
	}
	public void setDeliveryMode(DeliveryModeData deliveryMode) {
		this.deliveryMode = deliveryMode;
	}
	public DeliveryModeData getCollectingMode() {
		return collectingMode;
	}
	public void setCollectingMode(DeliveryModeData collectingMode) {
		this.collectingMode = collectingMode;
	}
	public CustomerData getCustomer() {
		return customer;
	}
	public void setCustomer(CustomerData customer) {
		this.customer = customer;
	}
	public String getSalesApplication() {
		return salesApplication;
	}
	public void setSalesApplication(String salesApplication) {
		this.salesApplication = salesApplication;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public Double getDeliveryCost() {
		return deliveryCost;
	}
	public void setDeliveryCost(Double deliveryCost) {
		this.deliveryCost = deliveryCost;
	}
	public Double getCollectingCost() {
		return collectingCost;
	}
	public void setCollectingCost(Double collectingCost) {
		this.collectingCost = collectingCost;
	}
	public Double getTotalPrice() {
		return TotalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		TotalPrice = totalPrice;
	}
	public boolean isValide() {
		return valide;
	}
	public void setValide(boolean valide) {
		this.valide = valide;
	}
	
}

package ma.pressing.ecommerce.facade.data;

public class OrderEntryData {

	
	private Integer quantity;
	private Double priceValue;
	private Double totalPrice;
	
	private OurServiceData productService;
	private OrderData order;
	
	
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Double getPriceValue() {
		return priceValue;
	}
	public void setPriceValue(Double priceValue) {
		this.priceValue = priceValue;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public OurServiceData getProductService() {
		return productService;
	}
	public void setProductService(OurServiceData productService) {
		this.productService = productService;
	}
	public OrderData getOrder() {
		return order;
	}
	public void setOrder(OrderData order) {
		this.order = order;
	}
	
	
}

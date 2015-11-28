package ma.pressing.ecommerce.facade.data;

public class OrderEntryData {

	
	private Integer quantity;
	private Double priceValue;
	private Double totalPrice;
	
	private OurServiceData productService;
	
	
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
		/*return BigDecimal.valueOf(getPriceValue().doubleValue())
				.multiply(BigDecimal.valueOf(getQuantity().longValue())).doubleValue();*/
		return this.totalPrice;
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

}

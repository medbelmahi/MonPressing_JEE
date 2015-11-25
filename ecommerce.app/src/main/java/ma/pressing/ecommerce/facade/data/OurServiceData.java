package ma.pressing.ecommerce.facade.data;

public class OurServiceData {
	
	private String label;
	private String description;
	
	private PriceData price;
	private ProductData product;
	
	
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public PriceData getPrice() {
		return price;
	}
	public void setPrice(PriceData price) {
		this.price = price;
	}
	public ProductData getProduct() {
		return product;
	}
	public void setProduct(ProductData product) {
		this.product = product;
	}
	
}

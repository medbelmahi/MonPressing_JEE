package ma.pressing.ecommerce.web.form.data;

public class LingeForm {
	
	private String refProduct;
	private String codeService;
	private Integer quantity;
//	private Double priceUnitary;
//	private Double priceTotal;
//	
//	
	
	public String getRefProduct() {
		return refProduct;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public void setRefProduct(String refProduct) {
		this.refProduct = refProduct;
	}
	public String getCodeService() {
		return codeService;
	}
	public void setCodeService(String codeService) {
		this.codeService = codeService;
	}
	/*public Double getPriceUnitary() {
		return priceUnitary;
	}
	public void setPriceUnitary(Double priceUnitary) {
		this.priceUnitary = priceUnitary;
	}
	public Double getPriceTotal() {
		return priceTotal;
	}
	public void setPriceTotal(Double priceTotal) {
		this.priceTotal = priceTotal;
	}*/
	
}
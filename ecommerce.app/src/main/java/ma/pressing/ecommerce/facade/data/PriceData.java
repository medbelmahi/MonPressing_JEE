package ma.pressing.ecommerce.facade.data;

import java.util.Date;

public class PriceData extends AbstractItemData {
	
	private Double value;
	private Date dateBeginValidation;
	private Date dateEndValidation;
	private boolean b2bPrice;
	private Integer scale;
	private String customerGroup;
	
	
	public Double getValue() {
		return value;
	}
	public void setValue(Double value) {
		this.value = value;
	}
	public Date getDateBeginValidation() {
		return dateBeginValidation;
	}
	public void setDateBeginValidation(Date dateBeginValidation) {
		this.dateBeginValidation = dateBeginValidation;
	}
	public Date getDateEndValidation() {
		return dateEndValidation;
	}
	public void setDateEndValidation(Date dateEndValidation) {
		this.dateEndValidation = dateEndValidation;
	}
	public boolean isB2bPrice() {
		return b2bPrice;
	}
	public void setB2bPrice(boolean b2bPrice) {
		this.b2bPrice = b2bPrice;
	}
	public Integer getScale() {
		return scale;
	}
	public void setScale(Integer scale) {
		this.scale = scale;
	}


	public String getCustomerGroup() {
		return customerGroup;
	}

	public void setCustomerGroup(String customerGroup) {
		this.customerGroup = customerGroup;
	}
}

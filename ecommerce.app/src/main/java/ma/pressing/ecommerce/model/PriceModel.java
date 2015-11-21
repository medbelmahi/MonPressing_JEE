package ma.pressing.ecommerce.model;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import ma.pressing.ecommerce.model.enumeration.CustomerGroup;

@Entity
@Table(name="ECOMMERCE_PRICES")
public class PriceModel extends AbstractModel {

	private static final long serialVersionUID = 8410810474403617937L;
	
	@Column(name="VALUE")
	private BigDecimal value;
	@Column(name="DATE_BEGIN_VALIDATION")
	private Date dateBeginValidation;
	@Column(name="DATE_END_VALIDATION")
	private Date dateEndValidation;
	@Column(name="CUSTOMER_GROUP")
	private CustomerGroup customerGroup;
	@Column(name="SCALE")
	private Integer scale;
	
	public CustomerGroup getCustomerGroup() {
		return customerGroup;
	}
	public void setCustomerGroup(CustomerGroup customerGroup) {
		this.customerGroup = customerGroup;
	}
	public BigDecimal getValue() {
		return value;
	}
	public void setValue(BigDecimal value) {
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
	
}

package ma.pressing.ecommerce.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="DELIVERY_MODE")
public class DeliveryModeModel extends AbstractModel {

	private static final long serialVersionUID = 1L;

	@Column(name="COST")
	private BigDecimal cost;
	@Column(name="LABEL")
	private String label;
	@Column(name="DESCRIPTION")
	private String description;
	
	
	public BigDecimal getCost() {
		return cost;
	}
	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}
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
}

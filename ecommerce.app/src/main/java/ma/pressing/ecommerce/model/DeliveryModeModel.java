package ma.pressing.ecommerce.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="DELIVERY_MODE")
public class DeliveryModeModel extends AbstractModel {

	private static final long serialVersionUID = 1L;

	@Column(name="LABEL")
	private String label;
	@Column(name="DESCRIPTION")
	private String description;
	
	
	@OneToMany(fetch = FetchType.LAZY)
	private List<PriceModel> costs = new ArrayList<PriceModel>();
	
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

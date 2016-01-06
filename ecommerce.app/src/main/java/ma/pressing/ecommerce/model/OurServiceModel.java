package ma.pressing.ecommerce.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="ECOMMERCE_SERVICES")
public class OurServiceModel extends AbstractModel {

	private static final long serialVersionUID = 3104871136082457200L;
	
	@Column(name="CODE", unique=true)
	private String code;
	@Column(name="LABEL", unique=true)
	private String label;
	@Column(name="DESCRIPTION")
	private String description;
	
	@OneToMany(fetch = FetchType.LAZY)
	private List<ProductServiceModel> productServices = new ArrayList<ProductServiceModel>();

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

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
}

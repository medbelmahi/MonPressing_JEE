package ma.pressing.ecommerce.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ECOMMERCE_SERVICES")
public class OurServiceModel extends AbstractModel {

	private static final long serialVersionUID = 3104871136082457200L;
	
	
	
	@Column(name="CODE", unique=true)
	private String code;
	@Column(name="LABEL")
	private String label;
	@Column(name="DESCRIPTION")
	private String description;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "service")
	private List<PriceModel> prices = new ArrayList<PriceModel>();
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "PRODUCT_REF", nullable = false)
	private ProductModel product;

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

	public List<PriceModel> getPrices() {
		return prices;
	}

	public void setPrices(List<PriceModel> prices) {
		this.prices = prices;
	}

	public ProductModel getProduct() {
		return product;
	}

	public void setProduct(ProductModel product) {
		this.product = product;
	}
	
	
	
}

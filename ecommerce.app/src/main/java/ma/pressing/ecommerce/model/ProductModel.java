package ma.pressing.ecommerce.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="ECOMMERCE_PRODUCTS")
public class ProductModel extends AbstractModel{

	private static final long serialVersionUID = 2679414940540285884L;
	
	@Column(name="LABEL")
	private String label;
	@Column(name="PRODUCT_REF", unique = true)
	private String productRef;
	@Column(name="URL_IMAGE")
	private String urlImage;
	@Column(name = "DESCRIPTION")
	private String description;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	private List<ImageMediaModel> images = new ArrayList<ImageMediaModel>(0);
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	private List<ProductServiceModel> services = new ArrayList<ProductServiceModel>(0);
	
	public String getProductRef() {
		return productRef;
	}


	public void setProductRef(String productRef) {
		this.productRef = productRef;
	}


	public String getLabel() {
		return label;
	}


	public void setLabel(String label) {
		this.label = label;
	}


	public String getUrlImage() {
		return urlImage;
	}


	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}


	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<ProductServiceModel> getServices() {
		return services;
	}

	public void setServices(List<ProductServiceModel> services) {
		this.services = services;
	}
}

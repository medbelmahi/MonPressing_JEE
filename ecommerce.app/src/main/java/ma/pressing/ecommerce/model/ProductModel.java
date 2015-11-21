package ma.pressing.ecommerce.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="ECOMMERCE_PRODUCTS")
public class ProductModel extends AbstractModel{

	private static final long serialVersionUID = 2679414940540285884L;
	
	@Column(name="LABEL")
	private String label;
	@Column(name="URL_IMAGE")
	private String urlImage;
	
	
	
	
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

	
}

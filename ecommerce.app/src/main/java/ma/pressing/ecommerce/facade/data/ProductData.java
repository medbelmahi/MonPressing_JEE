package ma.pressing.ecommerce.facade.data;

import java.util.List;

public class ProductData extends AbstractItemData {
	
	private String label;
	private String productRef;
	private String urlImage;
	
	private List<ImageMediaData> images;
	
	private List<OurServiceData> services;

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getProductRef() {
		return productRef;
	}

	public void setProductRef(String productRef) {
		this.productRef = productRef;
	}

	public String getUrlImage() {
		
		for(ImageMediaData image : this.images)
		{
			if(image.isEnabled() && image.isDefaultMedia()){
				return image.getUrl();
			}
		}
		return "";
	}

	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}

	public List<ImageMediaData> getImages() {
		return images;
	}

	public void setImages(List<ImageMediaData> images) {
		this.images = images;
	}

	public List<OurServiceData> getServices() {
		return services;
	}

	public void setServices(List<OurServiceData> services) {
		this.services = services;
	}
	
	
	
}

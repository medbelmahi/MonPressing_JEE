package ma.pressing.ecommerce.facade;

import ma.pressing.ecommerce.facade.data.ProductData;

import java.util.List;

public interface DefaultProductFacade {

	public List<ProductData> getAllProducts();

	public ProductData add(ProductData productData);

	public ProductData save(ProductData productData);
}

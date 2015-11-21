package ma.pressing.ecommerce.service;

import java.util.List;

import ma.pressing.ecommerce.model.ProductModel;

public interface ProductService {
	public ProductModel saveProduct(ProductModel productModel);
	public ProductModel editProduct(ProductModel productModel);
	public void deleteProduct(Long idProduct);
	public ProductModel findProductById(Long idProduct);
	public List<ProductModel> getAllProductModel();
}

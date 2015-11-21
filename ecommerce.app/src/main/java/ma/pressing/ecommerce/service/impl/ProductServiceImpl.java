package ma.pressing.ecommerce.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ma.pressing.ecommerce.dao.ProductDao;
import ma.pressing.ecommerce.model.ProductModel;
import ma.pressing.ecommerce.service.ProductService;

@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	@Override
	public ProductModel saveProduct(ProductModel productModel) {
		return productDao.save(productModel);
	}

	@Override
	public ProductModel editProduct(ProductModel productModel) {
		return productDao.edit(productModel);
	}

	@Override
	public void deleteProduct(Long idProduct) {
		productDao.delete(idProduct);
	}

	@Override
	public ProductModel findProductById(Long idProduct) {
		return productDao.find(idProduct);
	}

	@Override
	public List<ProductModel> getAllProductModel() {
		return productDao.findAll();
	}

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	
	
}

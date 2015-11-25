package ma.pressing.ecommerce.facade.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.DefaultProductFacade;
import ma.pressing.ecommerce.facade.data.ProductData;
import ma.pressing.ecommerce.model.ProductModel;
import ma.pressing.ecommerce.service.ProductService;

@Component("productFacade")
public class DefautlProductFacadeImpl implements DefaultProductFacade {

	
	@Autowired
	private ProductService productService;
	
	@Resource(name="productPopulator")
	private DefaultPopulator<ProductModel, ProductData> productPopulator;
	
	@Override
	public List<ProductData> getAllProducts() {

		List<ProductModel> productsModel = productService.getAllProductModel();
		
		List<ProductData> productsData = new ArrayList<ProductData>();
		
		for(ProductModel productModel : productsModel){
			ProductData productData = new ProductData();
			
			productPopulator.populate(productModel, productData);
			
			productsData.add(productData);
		}
		
		return productsData;
	}

}

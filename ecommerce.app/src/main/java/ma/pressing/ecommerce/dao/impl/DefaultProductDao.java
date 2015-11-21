package ma.pressing.ecommerce.dao.impl;

import org.springframework.stereotype.Repository;

import ma.pressing.ecommerce.dao.ProductDao;
import ma.pressing.ecommerce.model.ProductModel;

@Repository("productDao")
public class DefaultProductDao extends DefaultGenericDao<ProductModel>implements ProductDao {

	public DefaultProductDao() {
		super(ProductModel.class);
	}
	

}

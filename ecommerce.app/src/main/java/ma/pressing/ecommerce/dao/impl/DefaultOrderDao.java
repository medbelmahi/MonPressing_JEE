package ma.pressing.ecommerce.dao.impl;

import org.springframework.stereotype.Repository;

import ma.pressing.ecommerce.dao.OrderDao;
import ma.pressing.ecommerce.model.OrderModel;


@Repository("orderDao")
public class DefaultOrderDao extends DefaultGenericDao<OrderModel> implements OrderDao {

	public DefaultOrderDao() {
		super(OrderModel.class);
	}
	
	
}

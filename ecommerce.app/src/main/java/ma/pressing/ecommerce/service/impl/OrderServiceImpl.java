package ma.pressing.ecommerce.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ma.pressing.ecommerce.dao.OrderDao;
import ma.pressing.ecommerce.model.OrderModel;
import ma.pressing.ecommerce.service.OrderService;

@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao orderDao;

	@Override
	public OrderModel saveOrder(OrderModel orderModel) {
		return orderDao.save(orderModel);
	}

	@Override
	public OrderModel editOrder(OrderModel orderModel) {
		return orderDao.edit(orderModel);
	}

	@Override
	public void deleteOrder(Long idOrder) {
		orderDao.delete(idOrder);
	}

	@Override
	public OrderModel findOrderById(Long idOrder) {
		return orderDao.find(idOrder);
	}

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
	
}

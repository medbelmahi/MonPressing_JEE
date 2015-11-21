package ma.pressing.ecommerce.service;

import ma.pressing.ecommerce.model.OrderModel;

public interface OrderService {
	public OrderModel saveOrder(OrderModel orderModel);
	public OrderModel editOrder(OrderModel orderModel);
	public void deleteOrder(Long idOrder);
	public OrderModel findOrderById(Long idOrder);
}

package order.service;

import order.dao.OrderDao;
import order.dao.OrderDaoImpl;

public class OrderServiceImpl implements OrderService{
	
	private OrderDao orderdao;
	
	public OrderServiceImpl() {
		this.orderdao = new OrderDaoImpl();
	}
}

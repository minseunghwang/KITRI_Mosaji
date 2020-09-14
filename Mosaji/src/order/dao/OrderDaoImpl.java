package order.dao;

import conn.mysql_DBConnect;

public class OrderDaoImpl implements OrderDao{
	private mysql_DBConnect db;

	
	public OrderDaoImpl() {
		db = mysql_DBConnect.getInstance();
	}
}

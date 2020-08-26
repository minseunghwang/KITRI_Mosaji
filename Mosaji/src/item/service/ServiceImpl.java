package item.service;

import java.util.ArrayList;

import item.dao.Dao;
import item.dao.DaoImpl;
import item.model.Item;

public class ServiceImpl implements Service{
	
	private Dao dao;
	
	public ServiceImpl() {
		dao = new DaoImpl();
	}

	@Override
	public ArrayList<Item> getAll() {
		return dao.selectAll_product();
	}

	@Override
	public ArrayList<Item> AfterFilter(int gender, String[] age, String[] skintype) {
		return dao.selectAfter_filter(gender, age, skintype);
	}

	@Override
	public Item detail(int i_no) {
		// TODO Auto-generated method stub
		return dao.detail(i_no);
	}

}

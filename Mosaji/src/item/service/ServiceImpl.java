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
	public ArrayList<Item> AfterFilter(String category2, int gender, String[] age, String[] skintype) {
		return dao.selectAfter_filter(category2, gender, age, skintype);
	}

	@Override
	public ArrayList<Item> getRank(String category2, String v1, String v2) {
		return dao.selectRank_product(category2, v1, v2);
	}
	
	public Item detail(int i_no) {
		// TODO Auto-generated method stub
		return dao.detail(i_no);
	}
	
	@Override
	public void delete(int i_no) {
		dao.delete(i_no);
		
	}

}

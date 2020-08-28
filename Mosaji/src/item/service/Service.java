package item.service;

import java.util.ArrayList;

import item.model.Item;
import item.model.Item2;


public interface Service {
	ArrayList<Item> getAll();
	ArrayList<Item> AfterFilter(String category2, int gender,String[] age,String[] skintype);
	ArrayList<Item> getRank(String category2, String v1, String v2);
	Item detail(int i_no);
	
	
	void upload(Item2 i);
}

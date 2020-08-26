package item.service;

import java.util.ArrayList;

import item.model.Item;

public interface Service {
	ArrayList<Item> getAll();
	ArrayList<Item> AfterFilter(int gender,String[] age,String[] skintype);
	ArrayList<Item> getRank(String category2, String i_star);
}

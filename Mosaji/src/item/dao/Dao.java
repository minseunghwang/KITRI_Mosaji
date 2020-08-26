package item.dao;

import java.util.ArrayList;

import item.model.Item;

public interface Dao {
	ArrayList<Item> selectAll_product();
	ArrayList<Item> selectAfter_filter(int gender,String[] age,String[] skintype);
	ArrayList<Item> selectRank_product(String category2, String i_star);
}

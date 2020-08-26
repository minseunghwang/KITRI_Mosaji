package wishlist.dao;

import java.util.ArrayList;

import wishlist.model.Wishlist;
import wishlist.model.Wishlist1;

public interface WishlistDao {
	
	ArrayList<Wishlist> selectAll();
	ArrayList<Wishlist> selectId(String u_id);
	
	ArrayList<Wishlist> selectItem(String u_id);
	ArrayList<Wishlist1> selectItem1(String u_id);
	
	void insert(Wishlist1 wishlist1);
}

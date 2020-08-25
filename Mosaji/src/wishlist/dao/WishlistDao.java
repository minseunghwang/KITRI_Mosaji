package wishlist.dao;

import java.util.ArrayList;

import wishlist.model.Wishlist;

public interface WishlistDao {
	
	ArrayList<Wishlist> selectAll();
}

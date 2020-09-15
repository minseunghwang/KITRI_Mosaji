package wishlist.dao;

import java.util.ArrayList;

import wishlist.model.Wishlist;
import wishlist.model.Wishlist1;
import wishlist.model.WishlistDuplication;

public interface WishlistDao {
	
	ArrayList<Wishlist> selectAll();
	ArrayList<Wishlist> selectId(String u_id);
	
	ArrayList<Wishlist> selectItem(String u_id);
	ArrayList<Wishlist1> selectItem1(String u_id);
	
	void insert(Wishlist1 wishlist1);
	
	void DeleteWishList(String[] zzim_arr);
	
	WishlistDuplication check(String u_id, int i_no);
//	void duplicationCheck(String u_id, int i_no);
}

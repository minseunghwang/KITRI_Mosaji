package wishlist.service;

import java.util.ArrayList;

import wishlist.model.Wishlist;
import wishlist.model.Wishlist1;
import wishlist.model.WishlistDuplication;

public interface WishlistService {
	
	ArrayList<Wishlist> getAll();
	
	ArrayList<Wishlist> getId(String u_id);
	
	ArrayList<Wishlist> getItem(String u_id);
	ArrayList<Wishlist1> getItem1(String u_id);
	
	void insert(Wishlist1 wishlist1);
	
	void DeleteWishList(String[] zzim_arr);
	
	WishlistDuplication check(String u_id, int i_no);
	
}

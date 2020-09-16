package wishlist.service;

import java.util.ArrayList;

import wishlist.dao.WishlistDao;
import wishlist.dao.WishlistDaoImpl;
import wishlist.model.Wishlist;
import wishlist.model.Wishlist1;
import wishlist.model.WishlistDuplication;

public class WishlistServiceImpl implements WishlistService{

private WishlistDao wishlistdao;
	
	public WishlistServiceImpl() {
		wishlistdao = new WishlistDaoImpl();
	}

	
	
	@Override
	public ArrayList<Wishlist> getAll() {
		// TODO Auto-generated method stub
		return wishlistdao.selectAll();
	}



	@Override
	public ArrayList<Wishlist> getId(String u_id) {
		// TODO Auto-generated method stub
		return wishlistdao.selectId(u_id);
	}



	@Override
	public ArrayList<Wishlist> getItem(String u_id) {
		// TODO Auto-generated method stub
		return wishlistdao.selectItem(u_id);
	}



	@Override
	public ArrayList<Wishlist1> getItem1(String u_id) {
		// TODO Auto-generated method stub
		return wishlistdao.selectItem1(u_id);
	}



	@Override
	public void insert(Wishlist1 wishlist1) {
		wishlistdao.insert(wishlist1);
		
	}



	@Override
	public void DeleteWishList(String[] zzim_arr) {
		wishlistdao.DeleteWishList(zzim_arr);
	}
	
	@Override
		public WishlistDuplication check(String u_id, int i_no) {
			// TODO Auto-generated method stub
			return wishlistdao.check(u_id, i_no);
		}
	
	@Override
		public ArrayList<Wishlist1> kakaoselect(String u_id) {
			// TODO Auto-generated method stub
			return wishlistdao.kakaoselect(u_id);
		}
}

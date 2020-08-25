package wishlist.service;

import java.util.ArrayList;

import wishlist.dao.WishlistDao;
import wishlist.dao.WishlistDaoImpl;
import wishlist.model.Wishlist;
import wishlist.model.Wishlist1;

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

}

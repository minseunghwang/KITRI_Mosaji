package wishlist.service;

import java.util.ArrayList;

import wishlist.dao.WishlistDao;
import wishlist.dao.WishlistDaoImpl;
import wishlist.model.Wishlist;

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

}

package wishlist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import wishlist.model.Wishlist;

public class WishlistDaoImpl implements WishlistDao{

	private DBConnect db;

	public WishlistDaoImpl() {
		db = DBConnect.getInstance();
	}
	
	@Override
	public ArrayList<Wishlist> selectAll() {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Wishlist> wishlist = new ArrayList<Wishlist>();
		String sql = "SELECT * FROM mosaji_wishlist ORDER BY w_no";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				wishlist.add(new Wishlist(rs.getInt(1), rs.getString(2), rs.getInt(3)));
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return wishlist;
	}

}

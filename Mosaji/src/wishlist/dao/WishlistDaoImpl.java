package wishlist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import wishlist.model.Wishlist;
import wishlist.model.Wishlist1;

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
	
	@Override
	public ArrayList<Wishlist> selectId(String u_id) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Wishlist> wishlist = new ArrayList<Wishlist>();
		String sql = "SELECT * FROM mosaji_wishlist WHERE u_id = ? ORDER BY w_no";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				wishlist.add(new Wishlist(rs.getInt(1), rs.getString(2), rs.getInt(3)));
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
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

	@Override
	public ArrayList<Wishlist> selectItem(String u_id) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Wishlist> wishlist = new ArrayList<Wishlist>();
		String sql = "SELECT rownum, i.i_name, i.i_content, i.i_img FROM mosaji_wishlist w, mosaji_item i WHERE w.i_no = i.i_no AND w.u_id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				wishlist.add(new Wishlist(rs.getInt(1), rs.getString(2), rs.getInt(3)));
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
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

	@Override
	public ArrayList<Wishlist1> selectItem1(String u_id) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Wishlist1> wishlist = new ArrayList<Wishlist1>();
		String sql = "SELECT rownum, i.i_no, i.i_name, i.i_content, i.i_img FROM mosaji_wishlist w, mosaji_item i WHERE w.i_no = i.i_no AND w.u_id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				wishlist.add(new Wishlist1(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5)));
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
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

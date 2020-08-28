package item.dao;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import item.model.Item;

public class DaoImpl implements Dao{
	
	private DBConnect db;
	
	public DaoImpl() {
		db = DBConnect.getInstance();
	}

	@Override
	public ArrayList<Item> selectAll_product() {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Item> data = new ArrayList<Item>();
		String sql = "select * from mosaji_item";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				data.add(new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10), rs.getInt(11), rs.getInt(12), rs.getString(13)));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return data;
	}

	@Override
	public ArrayList<Item> selectAfter_filter(String category2, int gender, String[] age, String[] skintype) {

		
		ArrayList<String> gen = new ArrayList<String>();
		if (gender == 3 || gender == 1) {
			gen.add("남");
		}
		if(gender == 2 || gender == 1) {
			gen.add("여");
		}
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Item> data = new ArrayList<Item>();
		int index = 1;
		String sql = "select * from mosaji_item where ";
		try {
			sql += "i_gender in (";
			for(int i=0; i<gen.size(); i++) {
				sql += "?,";
			}
			sql = sql.substring(0, sql.length()-1);
			sql += ") ";
			
			sql += "and i_skintype in (";
			for(int i=0; i<skintype.length; i++) {
				sql += "?,";
			}
			sql = sql.substring(0, sql.length()-1);
			sql += ") ";
			
			sql += "and i_age in (";
			for(int i=0; i<age.length; i++) {
				sql += "?,";
			}
			sql = sql.substring(0, sql.length()-1);
			sql += ") ";
			
			sql += "and i_category2 = '";
			sql += category2;
			sql += "'";
			
			System.out.println(sql);
			
			pstmt = conn.prepareStatement(sql);
			
			for(int i=0; i<gen.size(); i++) {
				pstmt.setString(index,gen.get(i));
				index++;
			}
			
			for(int i=0; i<skintype.length; i++) {
				pstmt.setString(index,skintype[i]);
				index++;
			}
			
			for(int i=0; i<age.length; i++) {
				pstmt.setString(index,age[i]);
				index++;
			}
			
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				data.add(new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10), rs.getInt(11), rs.getInt(12), rs.getString(13)));
			}
			System.out.println("data size : " + data.size());
		}
		catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return data;
	}

	@Override
	public ArrayList<Item> selectRank_product(String category2, String v1, String v2) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Item> data = new ArrayList<Item>();
		String sql = "select * from mosaji_item where i_category2 = ? order by";
		sql += " "+v1;
		sql += " "+v2;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category2);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				data.add(new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10), rs.getInt(11), rs.getInt(12), rs.getString(13)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return data;
	}
	public Item detail(int i_no) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Item i = null;
		String sql = "SELECT * FROM mosaji_item WHERE i_no = ?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				i = new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10), rs.getInt(11), rs.getInt(12), rs.getString(13));
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
		
		return i;
	}
	
	
	@Override
	public void delete(int i_no) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "DELETE mosaji_item WHERE i_no = ?";
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_no);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
}

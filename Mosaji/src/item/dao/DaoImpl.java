package item.dao;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import item.model.Item;
import user.model.User;

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
	
	
	
	public void insert(Item i) {
		Connection conn = null;
		String sql = "INSERT INTO mosaji_item (I_NO,I_NAME, I_VOLUME, I_CATEGORY1, I_CATEGORY2, I_CONTENT, I_BRAND, I_GENDER, I_AGE, I_SKINTYPE, I_PRICE,I_IMG)"
				+ "VALUES(mosaji_item_seq.nextval,'?','?','?','?','?','?','?',?,'?',?,UTL_RAW.CAST_TO_RAW(?))";

		PreparedStatement pstmt = null;
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setString(1, i.getI_name());
			pstmt.setString(2,i.getI_volume());
			pstmt.setString(3,i.getI_category1());
			pstmt.setString(4,i.getI_category2());
			pstmt.setString(5,i.getI_content());
			pstmt.setString(6,i.getI_brand());
			pstmt.setString(7,i.getI_gender());
			pstmt.setInt(8,i.getI_age());
			pstmt.setString(9,i.getI_skintype());
			pstmt.setInt(10,i.getI_price());
			pstmt.setString(11,i.getI_img());
			
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

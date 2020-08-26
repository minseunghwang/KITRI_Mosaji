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
	public ArrayList<Item> selectAfter_filter(int gender, String[] age, String[] skintype) {

		
		ArrayList<String> gen = new ArrayList<String>();
		if (gender == 3 || gender == 1) {
			gen.add("남");
		}
		if(gender == 2 || gender == 1) {
			gen.add("여");
		}
		
		System.out.println(gen);
		System.out.println(gen.size() + " gender :" + gender);
		
		System.out.print(age.length + " age : ");
		for(int i=0; i<age.length; i++) {
			System.out.print(age[i]+",");
		}
		System.out.println();
		
		System.out.print(skintype.length + " skintype : ");
		for(int i=0; i<skintype.length; i++) {
			System.out.print(skintype[i]+",");
		}
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Item> data = new ArrayList<Item>();
		String sql = "select * from mosaji_item where i_gender in ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setArray(1, (Array) gen);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				data.add(new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10), rs.getInt(11), rs.getInt(12), rs.getString(13)));
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		
		return data;
	}


}

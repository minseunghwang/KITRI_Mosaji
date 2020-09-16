package item.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import conn.mysql_DBConnect;
import item.model.Item;
import item.model.Item2;


public class DaoImpl implements Dao {

//	private DBConnect db;
	private mysql_DBConnect db;

	public DaoImpl() {
//		db = DBConnect.getInstance();
		
		db = mysql_DBConnect.getInstance();
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
			while (rs.next()) {
				data.add(new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getInt(11), (float) (Math.round((rs.getFloat(12)*100))/100.0), rs.getString(13)));
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
	public ArrayList<Item> selectAfter_filter(String category2, int gender, String[] age, String[] skintype, String keyword) {
	
		ArrayList<String> gen = new ArrayList<String>();
		if (gender == 3 || gender == 1) {
			gen.add("남");
		}
		if (gender == 2 || gender == 1) {
			gen.add("여");
		}

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Item> data = new ArrayList<Item>();
		int index = 1;
		String sql = "select * from mosaji_item where ";
		try {
			
		if (keyword == null) {
			
			sql += "i_gender in (";
			for (int i = 0; i < gen.size(); i++) {
				sql += "?,";
			}
			sql = sql.substring(0, sql.length() - 1);
			sql += ") ";

			sql += "and i_skintype in (";
			for (int i = 0; i < skintype.length; i++) {
				sql += "?,";
			}
			sql = sql.substring(0, sql.length() - 1);
			sql += ") ";

			sql += "and i_age in (";
			for (int i = 0; i < age.length; i++) {
				sql += "?,";
			}
			sql = sql.substring(0, sql.length() - 1);
			sql += ") ";

			sql += "and i_category2 = '";
			sql += category2;
			sql += "'";
			
		}else {	
					sql += "i_gender in (";
					for (int i = 0; i < gen.size(); i++) {
						sql += "?,";
					}
					sql = sql.substring(0, sql.length() - 1);
					sql += ") ";
		
					sql += "and i_skintype in (";
					for (int i = 0; i < skintype.length; i++) {
						sql += "?,";
					}
					sql = sql.substring(0, sql.length() - 1);
					sql += ") ";
		
					sql += "and i_age in (";
					for (int i = 0; i < age.length; i++) {
						sql += "?,";
					}
					sql = sql.substring(0, sql.length() - 1);
					sql += ") ";

					sql += "and ( i_name LIKE '%";
					sql += keyword;
					sql += "%' OR i_brand LIKE '%";
					sql += keyword;
					sql += "%') ORDER BY i_no";
				}
	
			pstmt = conn.prepareStatement(sql);
			
			System.out.println(sql);
			
			for (int i = 0; i < gen.size(); i++) {
				pstmt.setString(index, gen.get(i));
				index++;
			}

			for (int i = 0; i < skintype.length; i++) {
				pstmt.setString(index, skintype[i]);
				index++;
			}

			for (int i = 0; i < age.length; i++) {
				pstmt.setString(index, age[i]);
				index++;
			}
			
			
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				data.add(new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getInt(11), (float) (Math.round((rs.getFloat(12)*100))/100.0), rs.getString(13)));
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
	public ArrayList<Item> selectRank_product(String category2, String v1, String v2) {
//		Connection conn = db.getConnection();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Item> data = new ArrayList<Item>();
//		String sql = "select * from mosaji_item where i_category2 = ? order by";
		String sql = "select b.i_no, b.i_name, b.i_volume, b.i_category1, b.i_category2, b.i_content, b.i_brand, b.i_gender, b.i_age, b.i_skintype, b.i_price, b.i_star, b.i_img, count(*) revice_cnt "
				+ "from mosaji_review a, mosaji_item b where a.i_no = b.i_no and b.i_category2 = ? group by b.i_no order by b.";
		
		sql += " " + v1;
		sql += " " + v2;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category2);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				data.add(new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getInt(11), (float) (Math.round((rs.getFloat(12)*100))/100.0), rs.getString(13), rs.getInt(14)));
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
		System.out.println("i_NO : " + i_no);
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
			if (rs.next()) {
				i = new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getInt(11), (float) (Math.round((rs.getFloat(12)*100))/100.0), rs.getString(13));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return i;
	}

//	@Override
//	public void insert(Item2 i) {
//		Connection conn = null;
//		String sql = "INSERT INTO mosaji_item (I_NO,I_NAME, I_VOLUME, I_CATEGORY1, I_CATEGORY2, I_CONTENT, I_BRAND, I_GENDER, I_AGE, I_SKINTYPE, I_PRICE,I_IMG) VALUES(mosaji_item_seq.nextval,?,?,?,?,?,?,?,?,?,?,?)";
//
//		PreparedStatement pstmt = null;
//		try {
//			conn = db.getConnection();
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, i.getI_name());
//			pstmt.setString(2, i.getI_volume());
//			pstmt.setString(3, i.getI_category1());
//			pstmt.setString(4, i.getI_category2());
//			pstmt.setString(5, i.getI_content());
//			pstmt.setString(6, i.getI_brand());
//			pstmt.setString(7, i.getI_gender());
//			pstmt.setInt(8, i.getI_age());
//			pstmt.setString(9, i.getI_skintype());
//			pstmt.setInt(10, i.getI_price());
//			pstmt.setString(11, i.getI_img());
//
//			pstmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				pstmt.close();
//				conn.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//
//	}
	
	@Override
	public void insert(Item2 i) {
		Connection conn = null;
		String sql = "INSERT INTO mosaji_item (I_NAME, I_VOLUME, I_CATEGORY1, I_CATEGORY2, I_CONTENT, I_BRAND, I_GENDER, I_AGE, I_SKINTYPE, I_PRICE,I_IMG) VALUES(?,?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement pstmt = null;
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, i.getI_name());
			pstmt.setString(2, i.getI_volume());
			pstmt.setString(3, i.getI_category1());
			pstmt.setString(4, i.getI_category2());
			pstmt.setString(5, i.getI_content());
			pstmt.setString(6, i.getI_brand());
			pstmt.setString(7, i.getI_gender());
			pstmt.setInt(8, i.getI_age());
			pstmt.setString(9, i.getI_skintype());
			pstmt.setInt(10, i.getI_price());
			pstmt.setString(11, i.getI_img());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	public void delete(int i_no) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "DELETE FROM mosaji_item WHERE i_no = ?";
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_no);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}
	
	@Override
	public void avg(int i_no) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "UPDATE mosaji_item SET i_star = (SELECT SUM(r_star) / COUNT(?) FROM mosaji_review GROUP BY i_no HAVING i_no = ?)WHERE i_no = ?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_no);
			pstmt.setInt(2, i_no);
			pstmt.setInt(3, i_no);
			
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

//	@Override
//	public ArrayList<Item> search(String keyword) {
////		Connection conn = db.getConnection();
//		Connection conn = db.getConnection();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		ArrayList<Item> data = new ArrayList<Item>();
//		String sql = "SELECT * FROM mosaji_item WHERE i_name LIKE concat('%', ?, '%') ORDER BY i_no";
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, keyword);
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				data.add(new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
//						rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10),
//						rs.getInt(11), rs.getFloat(12), rs.getString(13)));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				rs.close();
//				pstmt.close();
//				conn.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//		return data;
//	}
	@Override
	public ArrayList<Item> search(String keyword) {
//		Connection conn = db.getConnection();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Item> data = new ArrayList<Item>();
		String sql = "SELECT * FROM mosaji_item WHERE i_name LIKE concat('%', ?, '%') OR i_brand LIKE concat('%', ?, '%') ORDER BY i_no";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				data.add(new Item(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getString(10),
						rs.getInt(11), (float) (Math.round((rs.getFloat(12)*100))/100.0), rs.getString(13)));
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
		public void update(Item i) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			System.out.println(i.getI_no());
			System.out.println(i.getI_name());
			System.out.println(i.getI_volume());
			System.out.println(i.getI_category1());
			System.out.println(i.getI_category2());
			System.out.println(i.getI_gender());
			System.out.println(i.getI_age());
				
			String sql = "UPDATE mosaji_item SET i_name = ?, i_volume = ?, i_category1 = ?, i_category2 = ?, i_content = ?, i_brand = ?, i_gender = ?, i_age = ?, i_skintype = ?, i_price = ?, i_img = ? WHERE i_no = ?";
			System.out.println(sql);
			try {
				conn = db.getConnection();
				pstmt = conn.prepareStatement(sql);
//				pstmt.setInt(1, i.getI_no());
				pstmt.setString(1, i.getI_name());
				pstmt.setString(2, i.getI_volume());
				pstmt.setString(3, i.getI_category1());
				pstmt.setString(4, i.getI_category2());
				pstmt.setString(5, i.getI_content());
				pstmt.setString(6, i.getI_brand());
				pstmt.setString(7, i.getI_gender());
				pstmt.setInt(8, i.getI_age());
				pstmt.setString(9, i.getI_skintype());
				pstmt.setInt(10, i.getI_price());
				pstmt.setString(11, i.getI_img());
				pstmt.setInt(12, i.getI_no());
				
				pstmt.executeUpdate();
				System.out.println("1");
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

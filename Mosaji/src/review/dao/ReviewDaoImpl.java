package review.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.mysql_DBConnect;
import review.model.MyReview;
import review.model.Review;
import review.model.Review1;
import review.model.ReviewCount;

public class ReviewDaoImpl implements ReviewDao {

	
//	private DBConnect db;
	private mysql_DBConnect db;

	
	public ReviewDaoImpl() {
//		db = DBConnect.getInstance();
		db = mysql_DBConnect.getInstance();
	}
	

	@Override
	public void insert(Review review, String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "INSERT INTO mosaji_review(r_content, r_date, r_star, u_id, i_no) VALUES(?, sysdate(), ?, ?, ?)";

		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, review.getR_content());
			pstmt.setInt(2, review.getR_star());
			pstmt.setString(3, u_id);
			pstmt.setInt(4, review.getI_no());
			System.out.println(review);
			System.out.println("==================");
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
	public ArrayList<Review> selectByi_no(int i_no) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Review> review = new ArrayList<Review>();
		String sql = "SELECT r_no, r_content, r_date, r_star, i_no, u_id, rownum FROM mosaji_review WHERE i_no = ? ORDER BY rownum desc";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_no);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				review.add(new Review(rs.getInt("r_no"), rs.getString("r_content"), rs.getDate("r_date"), rs.getInt("r_star"), rs.getInt("i_no"), rs.getString("u_id"), rs.getInt("rownum")));
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
		return review;
	}

	@Override
	public ArrayList<MyReview> selectByu_id(String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<MyReview> review = new ArrayList<MyReview>();
		String sql = "SELECT @rownum:=@rownum+1 as rownum, i.i_img, i.i_name, r.r_content, r.r_star, r.r_date, u_id, i.i_no FROM mosaji_review r, mosaji_item i WHERE (@rownum:=0)=0 AND r.i_no = i.i_no AND u_id = ? ORDER BY r_date desc";
		
		try{
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				review.add(new MyReview(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getDate(6), rs.getString(7), rs.getInt(8)));
			}
		} catch(SQLException e) {
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
		return review;
	}
//	@Override
//	public ArrayList<Review1> selectByi_no1(int i_no) {
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		ArrayList<Review1> review = new ArrayList<Review1>();
//		String sql = "SELECT u.u_age, u.u_skintype, u.u_gender, r.r_star, r.r_content, r.u_id FROM mosaji_review r, mosaji_user u WHERE r.u_id = u.u_id and i_no = ?";
//	}

	@Override
	public ArrayList<Review1> selectByi_no1(int i_no) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Review1> review = new ArrayList<Review1>();
		String sql = "SELECT r.r_no, u.u_age, u.u_skintype, u.u_gender, r.r_star, r.r_content, r.u_id, r.i_no FROM mosaji_review r, mosaji_user u WHERE r.u_id = u.u_id and i_no = ?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_no);
			rs = pstmt.executeQuery();
			
			while(rs.next() ) {
				review.add(new Review1(rs.getInt("r_no"), rs.getInt("u_age"), rs.getString("u_skintype"), rs.getString("u_gender"), rs.getInt("r_star"), rs.getString("r_content"), rs.getString("u_id"), rs.getInt("i_no")));
			}
		}catch(SQLException e) {
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
		return review;
	}
	@Override
		public ArrayList<Review> selectReview() {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<Review> review = new ArrayList<Review>();
			String sql = "SELECT r.r_no, r.r_content, r.r_date, r.r_star, r.i_no, r.u_id, i.i_name FROM mosaji_review r, mosaji_item i WHERE r.i_no = i.i_no order by r.r_date desc";
			
			try {
				conn = db.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next() ) {
					review.add(new Review(rs.getInt("r_no"), rs.getString("r_content"), rs.getDate("r_date"), rs.getInt("r_star"), rs.getInt("i_no"), rs.getString("u_id"), rs.getString("i_name")));
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
			
			return review;
		}
	
	
	@Override
	public void delete(int r_no) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "DELETE FROM mosaji_review WHERE r_no = ?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r_no);
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


	@Override
	public ReviewCount count(int i_no) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ReviewCount reviewcount = null;
		
		
		String sql = "select avg((select sum(r.r_star) / count(if(u.u_skintype = '건성', u.u_skintype, null)) from mosaji_review r, mosaji_user u where r.u_id = u.u_id and u.u_skintype ='건성' and i_no = ?)) as dryStar, count(if(u.u_skintype = '건성', u.u_skintype, null)) as dryCount," + 
				"avg((select sum(r.r_star) / count(if(u.u_skintype = '지성', u.u_skintype, null)) from mosaji_review r, mosaji_user u where r.u_id = u.u_id and u.u_skintype ='지성' and i_no = ?)) as oilyStar, count(if(u.u_skintype = '지성', u.u_skintype, null)) as oilyCount," + 
				"avg((select sum(r.r_star) / count(if(u.u_skintype = '중성', u.u_skintype, null)) from mosaji_review r, mosaji_user u where r.u_id = u.u_id and u.u_skintype ='중성' and i_no = ?)) as normalStar, count(if(u.u_skintype = '중성', u.u_skintype, null)) as normalCoun," + 
				"avg((select sum(r.r_star) / count(if(u.u_skintype = '복합성', u.u_skintype, null)) from mosaji_review r, mosaji_user u where r.u_id = u.u_id and u.u_skintype ='복합성' and i_no = ?)) as complexitiesStar, count(if(u.u_skintype = '복합성', u.u_skintype, null)) as complexitiesCount," + 
				"avg((select sum(r.r_star) / count(if(u.u_skintype = '민감성', u.u_skintype, null)) from mosaji_review r, mosaji_user u where r.u_id = u.u_id and u.u_skintype ='민감성' and i_no = ?)) as sensitiveStar, count(if(u.u_skintype = '민감성', u.u_skintype, null)) as sensitiveCount from mosaji_review r, mosaji_user u where r.u_id = u.u_id and i_no = ?";

		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_no);
			pstmt.setInt(2, i_no);
			pstmt.setInt(3, i_no);
			pstmt.setInt(4, i_no);
			pstmt.setInt(5, i_no);
			pstmt.setInt(6, i_no);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				reviewcount = new ReviewCount(rs.getFloat(1), rs.getInt(2), rs.getFloat(3), rs.getInt(4), rs.getFloat(5), rs.getInt(6), rs.getFloat(7), rs.getInt(8), rs.getFloat(9), rs.getInt(10));
			}
			
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return reviewcount;
	}
	@Override
		public void DeleteReview(String[] review_arr) {
			Connection conn = null;
			String sql = "DELETE FROM mosaji_review WHERE";
			PreparedStatement pstmt = null;
			
			for(String i:review_arr) {
				sql += "r_no = ";
				sql += i;
				sql += " or ";
			}
			
			sql = sql.substring(0, sql.length()-3);
			
			try {
				conn = db.getConnection();
				pstmt = conn.prepareStatement(sql);
				
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

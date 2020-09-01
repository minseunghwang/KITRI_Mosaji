package review.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import conn.mysql_DBConnect;
import review.model.MyReview;
import review.model.Review;
import review.model.Review1;

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

		String sql = "INSERT INTO mosaji_review VALUES(mosaji_review_seq.nextval, ?, sysdate, ?, ?, ?)";

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
		String sql = "SELECT rownum, i.i_img, i.i_name, r.r_content, r.r_star, r.r_date, u_id, i.i_no FROM mosaji_review r, mosaji_item i WHERE r.i_no = i.i_no AND u_id = ? ORDER BY rownum desc";
		
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

	@Override
	public ArrayList<Review1> selectByi_no1(int i_no) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Review1> review = new ArrayList<Review1>();
		String sql = "SELECT u.u_age, u.u_skintype, u.u_gender, r.r_star, r.r_content, r.u_id FROM mosaji_review r, mosaji_user u WHERE r.u_id = u.u_id and i_no = ?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_no);
			
			while(rs.next() ) {
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return review;
	}

	
	
	

}

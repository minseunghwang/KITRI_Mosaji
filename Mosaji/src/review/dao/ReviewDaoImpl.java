package review.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import review.model.Review;

public class ReviewDaoImpl implements ReviewDao {

	private DBConnect db;

	public ReviewDaoImpl() {
		db = DBConnect.getInstance();
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
	public ArrayList<Review> selectByu_id(String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<Review> review = new ArrayList<Review>();
		String sql = "SELECT r_no, r_content, r_date, r_star, i_no, u_id, rownum FROM mosaji_review WHERE u_id = ? ORDER BY rownum desc";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
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

}

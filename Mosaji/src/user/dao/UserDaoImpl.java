package user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.DBConnect;
import user.model.User;

public class UserDaoImpl implements UserDao{
	private DBConnect db;

	public UserDaoImpl() {
		db = DBConnect.getInstance();
	}
	
	public User select(String u_id) {
		Connection conn = null;
		ResultSet rs = null;
		User u = null;
		
		String sql = "select * from mosaji_user where u_id = ?";
		PreparedStatement pstmt = null;
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				u = new User(rs.getString("u_id"), rs.getInt("u_no"), rs.getString("u_pw"), rs.getString("u_name"), rs.getInt("u_age"), rs.getString("u_gender"),  rs.getString("u_skintype"), rs.getInt("u_like_item"));
				
			} 
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return u;
	}

	@Override
	public void insert(User u) {
		Connection conn = null;
		String sql = "INSERT INTO mosaji_user VALUES(mosaji_user_seq.nextval, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setString(1, u.getU_id());
			pstmt.setString(2, u.getU_pw());
			pstmt.setString(3, u.getU_name());
			pstmt.setInt(4, u.getU_age());
			pstmt.setString(5, u.getU_gender());
			pstmt.setInt(6, u.getU_like_item());
			pstmt.setString(7, u.getU_skintype());
			
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
	public void delete(String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "DELETE mosaji_user WHERE u_id=?";
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			pstmt.executeUpdate();
			
		}catch(SQLException e){
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
	public void update(User u) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql ="UPDATE mosaji_user SET u_pw = ?, u_name = ?, u_age = ?, u_gender = ? , u_skintype = ? WHERE u_id =?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u.getU_pw());
			pstmt.setString(2, u.getU_name());
			pstmt.setInt(3, u.getU_age());
			pstmt.setString(4, u.getU_gender());
			pstmt.setString(5, u.getU_skintype());
			pstmt.setString(6, u.getU_id());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public User login(String u_id, String u_pw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		User u = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM mosaji_user WHERE u_id =? AND u_pw=?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			pstmt.setString(2, u_pw);
			
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				u = new User(rs.getString("u_id"), rs.getInt("u_no"), rs.getString("u_pw"), rs.getString("u_name"), rs.getInt("u_age"), rs.getString("u_gender"),  rs.getString("u_skintype"), rs.getInt("u_like_item"));
				
			} 
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return u;
	}

	@Override
	public int JoinCheck(String u_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
}

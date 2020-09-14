package user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.mysql_DBConnect;
import user.model.User;

public class UserDaoImpl implements UserDao{
	private mysql_DBConnect db;

	public UserDaoImpl() {
		db = mysql_DBConnect.getInstance();
	}
	
	public User select(String u_id) {
		Connection conn = null;
		ResultSet rs = null;
		User u = null;
		
		String sql = "select u_id, u_no, u_pw, u_name, u_age, u_gender, u_skintype, u_like_item from mosaji_user where u_id = ?";
		PreparedStatement pstmt = null;
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			System.out.println("u_id daoimpl" + u_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				u = new User(rs.getString("u_id"), rs.getInt("u_no"), rs.getString("u_pw"), rs.getString("u_name"), rs.getInt("u_age"), rs.getString("u_gender"),  rs.getString("u_skintype"), rs.getInt("u_like_item"));
				
			} 
			System.out.println("user dao" + u);
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
		String sql = "INSERT INTO mosaji_user(u_no, u_id, u_pw, u_name, u_age, u_gender, u_like_item, u_skintype) VALUES((select * from (select max(u_no)+1 from mosaji_user) next), ?, ?, ?, ?, ?, ?, ?)";
//		(select * from (select max(u_no)+1 from mosaji_user) next)
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
		
		String sql = "DELETE FROM mosaji_user WHERE u_id=?";
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
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return u;
	}

	@Override
	public int Join_Check(String u_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT u_id FROM mosaji_user WHERE u_id =?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return 1;		// id 존재하는거 => 
			} else {
				return 0;		// id없음 회원가입 가능
			}
		} catch(SQLException e) {
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
		return -1;
	}
	
	@Override
	public ArrayList<User> allUser() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<User> user = new ArrayList<User>();
		
		System.out.println("userdao " + user);
		String sql = "SELECT u_id, u_no, u_pw, u_name, u_age, u_gender, u_skintype FROM mosaji_user order by u_no desc";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next() ) {
				user.add(new User(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7)));
				
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
		return user;
		
	}
	
}

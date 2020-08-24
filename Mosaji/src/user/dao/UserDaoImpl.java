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
				u = new User(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7));
				
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
}

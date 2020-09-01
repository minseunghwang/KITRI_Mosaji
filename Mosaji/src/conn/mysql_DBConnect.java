package conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class mysql_DBConnect {
	private static mysql_DBConnect db = new mysql_DBConnect();
	public Connection conn = null;
	
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://mosaji.csu1yuqbzcre.ap-northeast-2.rds.amazonaws.com/mosaji?userSSL=false";
	
	private mysql_DBConnect() {
		
	}
	
	public static mysql_DBConnect getInstance() {
		return db;
	}
	
	public Connection getConnection() {
		
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "root", "1q2w3e4r");
		} catch (Exception e) {
			// TODO: handle exception
		}
		return conn;
	}
}

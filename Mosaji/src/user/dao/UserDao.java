package user.dao;

import java.util.ArrayList;

import user.model.User;

public interface UserDao {
	
	User select(String u_id);
	
	void insert(User u);
	
	void delete(String u_id);
	
	void update(User u);
	
	User login(String u_id, String u_pw);
	
	int Join_Check(String u_id);
	
	ArrayList<User> allUser();
	
	
}

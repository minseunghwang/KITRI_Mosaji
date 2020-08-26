package user.dao;

import user.model.User;

public interface UserDao {
	
	User select(String u_id);
	
	void insert(User u);
	
	void delete(String u_id);
	
	void update(User u);
	
	
	
	
}

package user.service;

import user.model.User;

public interface UserService {
	User getUser(String u_id);
	void join(User u);
	void delete(String u_id);
	void update(User u);
	
}

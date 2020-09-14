package user.service;

import java.util.ArrayList;

import user.model.User;

public interface UserService {
	User getUser(String u_id);
	void join(User u);
	void delete(String u_id);
	void update(User u);
	User login(String u_id, String u_pw);
	int Joincheck(String u_id);
	ArrayList<User> allUser();
}

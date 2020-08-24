package user.service;

import user.dao.UserDao;
import user.dao.UserDaoImpl;
import user.model.User;

public class UserServiceImpl implements UserService{

	private UserDao userdao;
	
	public UserServiceImpl() {
		this.userdao = new UserDaoImpl();
	}
	@Override
	public User getUser(String u_id) {
		// TODO Auto-generated method stub
		return userdao.select(u_id);
	}
	@Override
	public void join(User u) {
		userdao.insert(u);
		
	}
	
}

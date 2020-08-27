package review.service;

import java.util.ArrayList;

import item.dao.Dao;
import review.dao.ReviewDao;
import review.dao.ReviewDaoImpl;
import review.model.Review;

public class ReviewServiceImpl implements ReviewService{

private ReviewDao reviewdao;
	
	public ReviewServiceImpl() {
		this.reviewdao = new ReviewDaoImpl();
	}
	
	@Override
	public void insert(Review review, String u_id) {
		reviewdao.insert(review, u_id);
		
	}

	@Override
	public ArrayList<Review> selectByi_no(int i_no) {
		// TODO Auto-generated method stub
		return reviewdao.selectByi_no(i_no);
	}

	@Override
	public ArrayList<Review> selectByu_id(String u_id) {
		// TODO Auto-generated method stub
		return reviewdao.selectByu_id(u_id);
	}
	
}

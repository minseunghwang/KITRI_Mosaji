package review.service;

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
	
}

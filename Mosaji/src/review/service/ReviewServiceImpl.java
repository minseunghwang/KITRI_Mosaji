package review.service;

import java.util.ArrayList;

import item.dao.Dao;
import review.dao.ReviewDao;
import review.dao.ReviewDaoImpl;
import review.model.MyReview;
import review.model.Review;
import review.model.Review1;
import review.model.ReviewCount;

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
	public ArrayList<MyReview> selectByu_id(String u_id) {
		// TODO Auto-generated method stub
		return reviewdao.selectByu_id(u_id);
	}

	@Override
	public ArrayList<Review1> selectByi_no1(int i_no) {
		// TODO Auto-generated method stub
		return reviewdao.selectByi_no1(i_no);
	}
	@Override
		public ArrayList<Review> selectReview() {
			// TODO Auto-generated method stub
			return reviewdao.selectReview();
		}

	@Override
	public void delete(int r_no) {
		reviewdao.delete(r_no);
		
	}

	@Override
	public ReviewCount count(int i_no) {
		// TODO Auto-generated method stub
		return reviewdao.count(i_no);
	}

	@Override
		public void DeleteReview(String[] review_arr) {
			reviewdao.DeleteReview(review_arr);
			
		}
	
	
}

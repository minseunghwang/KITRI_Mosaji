package review.service;

import java.util.ArrayList;

import review.model.MyReview;
import review.model.Review;

public interface ReviewService {
	void insert(Review review, String u_id);
	ArrayList<Review> selectByi_no(int i_no);
	ArrayList<MyReview> selectByu_id(String u_id);
	
}

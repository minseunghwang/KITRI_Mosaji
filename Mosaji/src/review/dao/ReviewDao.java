package review.dao;

import java.util.ArrayList;

import review.model.Review;

public interface ReviewDao {
	void insert(Review review, String u_id);
	ArrayList<Review> selectByi_no(int i_no);
}

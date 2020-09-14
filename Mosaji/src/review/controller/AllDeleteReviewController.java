package review.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import review.model.Review;
import review.service.ReviewService;
import review.service.ReviewServiceImpl;

/**
 * Servlet implementation class AllDeleteReviewController
 */
@WebServlet("/AllDeleteReviewController")
public class AllDeleteReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllDeleteReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		
		ReviewService reviewservice = new ReviewServiceImpl();
		
		String[] review_str = request.getParameter("review_str").split(",");
		
		HttpSession session = request.getSession(false);
		String u_id = (String) session.getAttribute("u_id");
		
		ArrayList<Review> review = (ArrayList<Review>) reviewservice.selectReview();
		request.setAttribute("review", review);
		RequestDispatcher rd = request.getRequestDispatcher("/view/admin/review.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

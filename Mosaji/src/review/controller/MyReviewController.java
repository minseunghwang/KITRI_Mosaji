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

import review.model.MyReview;
import review.model.Review;
import review.service.ReviewService;
import review.service.ReviewServiceImpl;

/**
 * Servlet implementation class MyReviewController
 */
@WebServlet("/MyReviewController")
public class MyReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MyReviewController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("controller 1");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		
		ReviewService reviewservice = new ReviewServiceImpl();
		HttpSession session = request.getSession(false);
		System.out.println("controller2");
		String u_id = (String) session.getAttribute("u_id");
		
		ArrayList<MyReview> myreview = reviewservice.selectByu_id(u_id);
		System.out.println("controller3");
		System.out.println(myreview);
		request.setAttribute("myreview", myreview);
		RequestDispatcher rd = request.getRequestDispatcher("view/user/myreview.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package review.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import item.service.Service;
import item.service.ServiceImpl;
import review.model.Review;
import review.service.ReviewService;
import review.service.ReviewServiceImpl;

/**
 * Servlet implementation class AddReviewController
 */
@WebServlet("/AddReviewController")
public class AddReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddReviewController() {
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
		Service service = new ServiceImpl();
		
		HttpSession session = request.getSession(false);
		
		
		
		String u_id = (String) session.getAttribute("u_id");
		Review review = new Review();
		review.setR_content(request.getParameter("r_content"));
		review.setU_id(u_id);
		
		review.setI_no(Integer.parseInt(request.getParameter("i_no")));
		review.setR_star(Integer.parseInt(request.getParameter("r_star")));;
		
		
		
		reviewservice.insert(review, u_id);
		service.avg(review.getI_no());
		
		System.out.println("리뷰쓸때 i_no ========" +review.getI_no());
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/ItemDetailController");
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

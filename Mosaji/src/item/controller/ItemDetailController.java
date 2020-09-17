package item.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import item.model.Item;
import item.service.Service;
import item.service.ServiceImpl;
import review.model.Review1;
import review.model.ReviewCount;
import review.service.ReviewService;
import review.service.ReviewServiceImpl;
import wishlist.model.WishlistDuplication;
import wishlist.service.WishlistService;
import wishlist.service.WishlistServiceImpl;

/**
 * Servlet implementation class ItemDetailController
 */
@WebServlet("/ItemDetailController")
public class ItemDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemDetailController() {
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
		
		Service itemservice = new ServiceImpl();
		ReviewService reviewservice = new ReviewServiceImpl();
		WishlistService wishlistservice = new WishlistServiceImpl();
		HttpSession session = request.getSession(false);
		String u_id = (String) session.getAttribute("u_id");
		System.out.println("? : " + u_id);
		
		int i_no = Integer.parseInt(request.getParameter("i_no"));
		
		
		Item i = itemservice.detail(i_no);
		request.setAttribute("i", i);
		
		WishlistDuplication wishlistduplication = wishlistservice.check(u_id, i_no);
		request.setAttribute("wishlistduplication", wishlistduplication);
		

		ArrayList<Review1> review = reviewservice.selectByi_no1(i_no);
		request.setAttribute("review", review);
		

		
		
		ReviewCount reviewcount = reviewservice.count(i_no);
		request.setAttribute("reviewcount", reviewcount);
		
		
//		RequestDispatcher rd = request.getRequestDispatcher("/view/item/itemDetail.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/view/item/itempage.jsp");
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

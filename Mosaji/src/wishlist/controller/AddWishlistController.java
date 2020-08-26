package wishlist.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wishlist.model.Wishlist1;
import wishlist.service.WishlistService;
import wishlist.service.WishlistServiceImpl;

/**
 * Servlet implementation class AddWishlistController
 */
@WebServlet("/AddWishlistController")
public class AddWishlistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddWishlistController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		
		WishlistService wishlistservice = new WishlistServiceImpl();
		
		HttpSession session = request.getSession(false);
		
		String u_id = (String) session.getAttribute("u_id");
		int i_no = Integer.parseInt(request.getParameter("i_no"));
		
		Wishlist1 wishlist1 = new Wishlist1(i_no, u_id);
		
		wishlistservice.insert(wishlist1);
		
		System.out.println("u_id" + u_id);
		System.out.println("=========================");
		System.out.println("wishlist1" + wishlist1 );
		System.out.println("=========================");
		System.out.println("i_no" + i_no);
		
		RequestDispatcher rd = request.getRequestDispatcher("/ItemDetailController?i_no="+i_no);
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

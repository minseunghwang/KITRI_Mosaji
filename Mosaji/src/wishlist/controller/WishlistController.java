package wishlist.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.model.User;
import user.service.UserService;
import user.service.UserServiceImpl;
import wishlist.model.Wishlist;
import wishlist.service.WishlistService;
import wishlist.service.WishlistServiceImpl;

/**
 * Servlet implementation class WishlistController
 */
@WebServlet("/WishlistController")
public class WishlistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishlistController() {
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
		UserService userservice = new UserServiceImpl();
		
		
		HttpSession session = request.getSession(false);
		System.out.println(session + "session");
		
		
		String u_id = (String) session.getAttribute("u_id");
		System.out.println("u_id = " + u_id);
		
		User u = userservice.getUser(u_id);
		
		request.setAttribute("u", u);
		System.out.println(" u  ==" +  u);
		ArrayList<Wishlist> wishlist = (ArrayList<Wishlist>) wishlistservice.getAll();
		
		request.setAttribute("wishlist", wishlist);
		
		System.out.println("wishlist = " + wishlist);
		RequestDispatcher rd = request.getRequestDispatcher("/view/user/wishlist.jsp");
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

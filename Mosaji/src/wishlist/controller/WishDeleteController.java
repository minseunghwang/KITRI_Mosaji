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
import wishlist.model.Wishlist1;
import wishlist.service.WishlistService;
import wishlist.service.WishlistServiceImpl;

/**
 * Servlet implementation class WishDeleteController
 */
@WebServlet("/WishDeleteController")
public class WishDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishDeleteController() {
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
		
		WishlistService service = new WishlistServiceImpl();
		
		String[] zzim_str = request.getParameter("zzim_str").split(",");
		
		service.DeleteWishList(zzim_str);
		
		HttpSession session = request.getSession(false);

		String u_id = (String) session.getAttribute("u_id");

		WishlistService wishlistservice = new WishlistServiceImpl();
		ArrayList<Wishlist1> wishlist = (ArrayList<Wishlist1>) wishlistservice.getItem1(u_id);
		request.setAttribute("wishlist", wishlist);
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

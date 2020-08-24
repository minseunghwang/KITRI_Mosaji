package user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.model.User;
import user.service.UserService;
import user.service.UserServiceImpl;

/**
 * Servlet implementation class JoinController
 */
@WebServlet("/JoinController")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinController() {
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
		
		UserService userservice = new UserServiceImpl();
		System.out.println("join controller 오니?");
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		String u_name = request.getParameter("u_name");
		int u_age = Integer.parseInt(request.getParameter("u_age"));
		String u_gender = request.getParameter("u_gender");
		String u_skintype = request.getParameter("u_skintype");
		int u_like_item = Integer.parseInt(request.getParameter("u_like_item"));
		
		User u = new User(u_id, u_pw, u_name, u_age, u_gender,  u_skintype, u_like_item);
		System.out.println(" u_skintype = " + u_skintype);
		System.out.println("u 확인 = "  + u);
		
		userservice.join(u);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/user/login.jsp");
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

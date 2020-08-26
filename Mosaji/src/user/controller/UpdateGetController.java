package user.controller;

import java.io.IOException;

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

/**
 * Servlet implementation class UpdateGetController
 */
@WebServlet("/UpdateGetController")
public class UpdateGetController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGetController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 요청과 응답의 인코딩 설정
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=UTF-8");
				response.setCharacterEncoding("utf-8");
				
				UserService userservice = new UserServiceImpl();
				
				HttpSession session = request.getSession(false);
				String u_id = (String) session.getAttribute("u_id");
				String u_pw = (String) session.getAttribute("u_pw");
				
				User u = userservice.getUser(u_id);
				request.setAttribute("u", u);
				
				System.out.println("=================");
				System.out.println("u" + u);
				System.out.println("=================");
				System.out.println("u_id = " + u_id);
				System.out.println("=================");
				System.out.println("u_pw = " + u_pw);
				
				
				RequestDispatcher rd = request.getRequestDispatcher("/view/user/update.jsp");
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

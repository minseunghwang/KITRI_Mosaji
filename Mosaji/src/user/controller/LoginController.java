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
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		String path = "/view/user/login.jsp";
		
		UserService userservice = new UserServiceImpl();
		
		HttpSession session = request.getSession();
		
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		
		User u = userservice.getUser(u_id);
		if(u != null && u_pw.equals(u.getU_pw())) {
			session.setAttribute("u_id", u_id);
			System.out.println("�꽦怨� u_id = " + u_id);
			path = "view/index.html";
		}else {
			System.out.println("�떎�뙣");
			System.out.println("�떎�뙣 u_id = " + u_id);
			System.out.println("�떎�뙣 u_pw = " + u_pw);
			path = "view/index.html";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(path);
		if(rd != null) {
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package user.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		
		
		UserService userservice = new UserServiceImpl();
		
		PrintWriter out = response.getWriter();
		
		boolean flag = false;
		
		HttpSession session = request.getSession();
		
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		
//		User u = userservice.getUser(u_id);
		User u = userservice.login(u_id, u_pw);
		if(u != null && u_pw.equals(u.getU_pw())) {
			session.setAttribute("u_id", u_id);
			System.out.println(" u_id = " + u_id);
			System.out.println(" u_pw = " + u_pw);
			flag = true;
			
			System.out.println("세션 담긴" + u_id);
			
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
			
			
			
		} else {
			System.out.println("아이디 비밀번호가 틀려요");
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go('-1');</script>");
			out.flush();

			flag = false;
		}
		
		session.setAttribute("flag", flag);

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

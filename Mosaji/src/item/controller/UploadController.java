package item.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import item.model.Item;
import item.service.Service;
import item.service.ServiceImpl;


/**
 * Servlet implementation class UploadController
 */
@WebServlet("/UploadController")
public class UploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadController() {
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
		
		Service service = new ServiceImpl();
		System.out.println("Uload controller 오니?");
		
		
		String i_name = request.getParameter("i_name");
		String i_volume = request.getParameter("i_volume");
		String i_category1 = request.getParameter("i_category1");
		String i_category2 = request.getParameter("i_category2");
		String i_content = request.getParameter("i_content");
		String i_brand = request.getParameter("i_brand");
		int i_price = Integer.parseInt(request.getParameter("i_price"));
		int i_star = Integer.parseInt(request.getParameter("i_star"));
		String i_img = request.getParameter("i_img");
		
		Item i = new Item(i_name, i_volume, i_category1, i_category2, i_content,  i_brand, i_price, i_star, i_img);

		
		service.insert(i);
		
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

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
		
		
		String i_name = request.getParameter("i_name");
		String i_volume = request.getParameter("i_volume");
		String i_gender = request.getParameter("i_gender");
		int i_age = Integer.parseInt(request.getParameter("i_age"));
		String i_skintype = request.getParameter("i_skintype");
		String i_category1 = request.getParameter("i_category1");
		String i_category2 = request.getParameter("i_category2");
		String i_content = request.getParameter("i_content");
		String i_brand = request.getParameter("i_brand");
		int i_price = Integer.parseInt(request.getParameter("i_price"));
		String i_img = request.getParameter("i_img");
		
		int ms=0;
		int ms2=0;
		
		Item i = new Item(ms, i_name, i_volume, i_category1, i_category2, i_content,  i_brand, i_gender, i_age, i_skintype, i_price, ms2, i_img);
		
//		service.insert(i);
		
		RequestDispatcher rd = request.getRequestDispatcher("/upload.jsp");
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

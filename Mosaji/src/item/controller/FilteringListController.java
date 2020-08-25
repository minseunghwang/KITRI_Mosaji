package item.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import item.service.Service;
import item.service.ServiceImpl;

/**
 * Servlet implementation class FilteringListController
 */
@WebServlet("/FilteringListController")
public class FilteringListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilteringListController() {
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
		
		
		String gval = request.getParameter("gval");
		String[] age_arr = request.getParameterValues("age_arr[]");
		String[] stype_arr =request.getParameterValues("stype_arr[]");
		System.out.println(gval + ", " + stype_arr + ", " + age_arr);
		
		for(int i=0; i<stype_arr.length; i++) {
			System.out.println(stype_arr[i]);
		}
//		필터링 변수 데이터 받아오는것까지 되었따
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

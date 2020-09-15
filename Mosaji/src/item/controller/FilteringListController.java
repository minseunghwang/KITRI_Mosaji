package item.controller;

import java.io.IOException;
import java.util.ArrayList;

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
		
		String category2 = request.getParameter("category2");
		int gender = Integer.parseInt(request.getParameter("gval"));
		String[] age = request.getParameterValues("age_arr[]");
		String[] skintype =request.getParameterValues("stype_arr[]");
		
		ArrayList<Item> item = service.AfterFilter(category2, gender, age, skintype);
		System.out.println("filterlinglistController");
		for(Item a:item) {
			System.out.println(a);
			System.out.println("이미지!!! : " + a.getI_img());
		}
		
		request.setAttribute("item", item);
		RequestDispatcher rd = request.getRequestDispatcher("/view/item/ItemList.jsp");
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

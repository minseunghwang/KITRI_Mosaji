package item.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import item.model.Item;
import item.model.Item2;
import item.service.Service;
import item.service.ServiceImpl;

/**
 * Servlet implementation class ItemUpdateController
 */
@WebServlet("/ItemUpdateController")
public class ItemUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemUpdateController() {
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
		
		Service itemservice = new ServiceImpl();
		
		String directory = "C:\\Users\\Administrator\\github\\KITRI_Mosaji\\Mosaji\\WebContent\\fileFolder";

		int maxSize = 1024 * 1024 * 10; 
		String encoding= "UTF-8";
		
		MultipartRequest multipartRequest = new MultipartRequest(request,directory, maxSize, encoding, new DefaultFileRenamePolicy());
		
		int i_no = Integer.parseInt(multipartRequest.getParameter("i_no"));
		
		// String fileName = multipartRequest.getOriginalFileName("i_img");
		String fileRealName = multipartRequest.getFilesystemName("i_img" );
		
		String i_name = multipartRequest.getParameter("i_name");
		String i_volume = multipartRequest.getParameter("i_volume");
		String i_gender = multipartRequest.getParameter("i_gender");
		int i_age = Integer.parseInt(multipartRequest.getParameter("i_age"));
		String i_skintype = multipartRequest.getParameter("i_skintype");
		String i_category1 = multipartRequest.getParameter("i_category1");
		
		String i_category2 = multipartRequest.getParameter("i_category2");
		String i_content = multipartRequest.getParameter("i_content");
		String i_brand = multipartRequest.getParameter("i_brand");
		int i_price = Integer.parseInt(multipartRequest.getParameter("i_price"));
				
		Item i = new Item(i_no, i_name, i_volume, i_category1, i_category2, i_content,  i_brand, i_gender, i_age, i_skintype, i_price, directory+File.separator+fileRealName);
		
		itemservice.update(i);
		
		RequestDispatcher rd = request.getRequestDispatcher("/ItemDetailController?i_no="+i_no);
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

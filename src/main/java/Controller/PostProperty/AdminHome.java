package Controller.PostProperty;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AdminHome extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher dispatcher=request.getRequestDispatcher("home.jsp");
//		dispatcher.forward(request, response);
		System.out.println("Came inside.");
		HttpSession session=request.getSession();
		Object adminId=session.getAttribute("adminId");
		if(adminId==null) {
			RequestDispatcher dispatcher=request.getRequestDispatcher("/JSP_Pages/admin/adminDefaultHome.jsp");
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher=request.getRequestDispatcher("/JSP_Pages/admin/adminHome.jsp");
			dispatcher.forward(request, response);
		}
		
	}
}

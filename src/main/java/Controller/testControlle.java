package Controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class testControlle extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		System.out.println("came tree");
		RequestDispatcher dispatcher=request.getRequestDispatcher("/JSP_Pages/admin/adminHome.jsp");
		dispatcher.forward(request, response);
	}
}

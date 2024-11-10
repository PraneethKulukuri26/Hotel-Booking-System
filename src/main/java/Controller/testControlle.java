package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class testControlle extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getAttribute("tree"));
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("/JSP_Pages/NewFile.jsp");
		dispatcher.forward(request, response);
//		PrintWriter out=response.getWriter();
//		out.print("Hello from servlet to Esp32");
	}
}

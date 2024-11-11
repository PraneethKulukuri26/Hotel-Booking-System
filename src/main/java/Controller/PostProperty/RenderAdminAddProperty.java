package Controller.PostProperty;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class RenderAdminAddProperty extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		HttpSession session=request.getSession();
		Object adminId=session.getAttribute("adminId");
		
		if(adminId==null) {
			response.sendRedirect("/HotelBookingSystem/admin/home");
		}else {
			RequestDispatcher dispatcher=request.getRequestDispatcher("/JSP_Pages/admin/adminAddProperty.jsp");
			dispatcher.forward(request, response);
		}
	}
}

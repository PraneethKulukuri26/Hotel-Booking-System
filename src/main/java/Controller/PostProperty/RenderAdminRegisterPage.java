package Controller.PostProperty;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class RenderAdminRegisterPage extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		Object adminid=session.getAttribute("adminId");
		if(adminid==null) {
			RequestDispatcher dispatcher=request.getRequestDispatcher("/JSP_Pages/admin/adminSigninRegisterPage.jsp");
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("/HotelBookingSystem/admin/home");
		}
	}
}

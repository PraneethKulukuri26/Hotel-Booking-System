package Controller;

import java.io.IOException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogOut extends HttpServlet{
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		System.out.println("Came inside.");
		HttpSession session=request.getSession(false);
		if(session!=null) {
			session.invalidate();
		}
		
		response.sendRedirect("/HotelBookingSystem");
		
	}
}

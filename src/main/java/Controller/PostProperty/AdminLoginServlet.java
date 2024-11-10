package Controller.PostProperty;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.google.gson.JsonObject;

import Database.Connect;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AdminLoginServlet extends HttpServlet{
	
	private int id;
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String email=(String)request.getParameter("email");
		String password=(String)request.getParameter("password");
		System.out.println("Trertertrt");
		
		int result=checkUser(email, password);
		System.out.println(result+"  tert");
		if(result==2) {
			HttpSession session=request.getSession();
        	session.setAttribute("adminId", String.valueOf(id));
		}
		
		JsonObject json=new JsonObject();
        json.addProperty("code", result);
      
        PrintWriter out=response.getWriter();
        out.print(json.toString());
        out.flush();
		
	}
	
	private int checkUser(String email, String password) {
		System.out.println("tree");
	    String query = "SELECT * FROM partner WHERE email = ?";
	    try (Connection conn = Connect.setConnection();
	         PreparedStatement pst = conn.prepareStatement(query)) {

	        pst.setString(1, email);
	        
	        try (ResultSet rs = pst.executeQuery()) {
	            if (rs.next()) {
	                if (rs.getString("password").equals(password)) {
	                	id=rs.getInt("id");
	                    return 2;
	                } else {
	                    return 1;
	                }
	            } else {
	                return 0;
	            }
	        }
	    } catch (SQLException e) {
	    	System.out.println(e.getMessage());
	        return -1;
	    }
	}
}

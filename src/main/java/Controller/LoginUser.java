package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.google.gson.JsonObject;

import Database.Connect;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginUser extends HttpServlet{
	
	private String name;
	private int id;
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String email=(String) request.getParameter("email");
		String password=(String) request.getParameter("password");
		System.out.println(email+"  Tree");
		
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        int result=checkUser(email,password);
        
        if(result==2) {
        	HttpSession session=request.getSession();
        	session.setAttribute("UserId", String.valueOf(id));
        	session.setAttribute("UserName", name);
        }
        
        JsonObject json=new JsonObject();
        json.addProperty("code", result);
      
        PrintWriter out=response.getWriter();
        out.print(json.toString());
        out.flush();
        
	}
	
	private int checkUser(String email, String password) {
		System.out.println("tree");
	    String query = "SELECT * FROM user WHERE email = ?";
	    try (Connection conn = Connect.setConnection();
	         PreparedStatement pst = conn.prepareStatement(query)) {

	        pst.setString(1, email);
	        
	        try (ResultSet rs = pst.executeQuery()) {
	            if (rs.next()) {
	                if (rs.getString("password").equals(password)) {
	                	id=rs.getInt("id");
	                	name=rs.getString("name");
	                	System.out.println("CAme in");
	                    return 2;
	                } else {
	                	System.out.println("CAme tree");
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

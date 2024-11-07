package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.google.gson.JsonObject;

import Database.Connect;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



public class RegisterUser extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String email=(String) request.getParameter("email");
		String name=(String) request.getParameter("name");
		String password=(String) request.getParameter("password");
		System.out.println(email);
		
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        
        int result=userInsertTed(email, name, password);
        System.out.println(result);
        
        if(result>0) {
        	HttpSession session=request.getSession();
        	session.setAttribute("UserId", String.valueOf(result));
        	session.setAttribute("UserName", name);
        }
        
        JsonObject json=new JsonObject();
        json.addProperty("code", result);
      
        PrintWriter out=response.getWriter();
        out.print(json.toString());
        out.flush();	
	}
	
	private int userInsertTed(String email, String name, String password) {
	    Connection conn = null;
	    CallableStatement calStatement = null;

	    try {
	        conn = Connect.setConnection();
	        if (conn == null) {
	            throw new Exception("Could not get connection.");
	        }

	        calStatement = conn.prepareCall("{CALL insert_user_if_not_exists(?,?,?,?,?)}");
	        calStatement.setString(1, name);
	        calStatement.setString(2, email);
	        calStatement.setString(3, password);
	        calStatement.registerOutParameter(4, Types.BOOLEAN);
	        calStatement.registerOutParameter(5, Types.INTEGER);
	        
	        calStatement.execute();
	        
	        boolean userInserted = calStatement.getBoolean(4);

	        return userInserted ? calStatement.getInt(5) : 0;

	    } catch (Exception e) {
	        System.out.println(e.getMessage());
	        return -1;

	    } finally {
	        try {
	            if (calStatement != null) calStatement.close();
	            if (conn != null) conn.close();
	        } catch (SQLException e) {
	        	System.out.println(e.getMessage());
	        }
	    }
	}

}

package Controller.PostProperty;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;

import com.google.gson.JsonObject;

import Database.Connect;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AdminRegisterServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String email=(String) request.getParameter("email");
		String password=(String) request.getParameter("password");
		String confirmPassword=(String) request.getParameter("confirmPassword");
		
		JsonObject obj=new JsonObject();
		
		System.out.println(email+" "+password+" "+confirmPassword);
		
		if(!password.equals(confirmPassword)) {
			obj.addProperty("code", -2);
		}else {
			int result=InsertData(email, password);
			
			if(result>0) {
				HttpSession session=request.getSession();
	        	session.setAttribute("adminId", String.valueOf(result));
			}
	        obj.addProperty("code", result);
		}
		
		PrintWriter out=response.getWriter();
        out.print(obj.toString());
        out.flush();
	}
	
	private int InsertData(String email,String password) {
	    Connection conn = null;
	    CallableStatement calStatement = null;

	    try {
	        conn = Connect.setConnection();
	        if (conn == null) {
	            throw new Exception("Could not get connection.");
	        }

	        calStatement = conn.prepareCall("{CALL insert_partner_if_not_exists(?,?,?,?)}");
	        calStatement.setString(1, email);
	        calStatement.setString(2, password);
	        calStatement.registerOutParameter(3, Types.BOOLEAN);
	        calStatement.registerOutParameter(4, Types.INTEGER);
	        
	        calStatement.execute();
	        
	        boolean partnerInserted = calStatement.getBoolean(3);

	        return partnerInserted ? calStatement.getInt(4) : 0;

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

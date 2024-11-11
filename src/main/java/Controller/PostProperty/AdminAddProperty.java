package Controller.PostProperty;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;
import java.util.Arrays;

import com.google.gson.JsonObject;

import Database.Connect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@MultipartConfig(maxFileSize = 1024 * 1024 * 10)
public class AdminAddProperty extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		HttpSession session=request.getSession();
		
		Object adminId=session.getAttribute("adminId");
		if(adminId==null) {
			response.sendRedirect("/HotelBookingSystem/admin/home");
		}else {
			System.out.println("came in");
			String name=request.getParameter("hotelName");
			String description=request.getParameter("description");
			String Address=request.getParameter("address");
			String City=request.getParameter("city");
			String ZipCode=request.getParameter("zipCode");
			long Phone =Long.parseLong(request.getParameter("phone"));
			String email=request.getParameter("email");
			int roomCount=Integer.parseInt(request.getParameter("totalRooms"));
			int price=Integer.parseInt(request.getParameter("pricePerDay"));
			String checkIn=request.getParameter("checkInTime");
			String checkOut=request.getParameter("checkOutTime");
			String  propertyType=request.getParameter("propertyType");
			String state=request.getParameter("state");//to be added
			String[] amenities = request.getParameterValues("amenities");
			
			if (checkIn.length() == 5) {  // If the format is HH:MM
	            checkIn += ":00";  // Append seconds
	        }
	        if (checkOut.length() == 5) {
	            checkOut += ":00";
	        }
			
			Part hotalImages=request.getPart("hotelImages");
			Part roomImages=request.getPart("roomImages");
			
			InputStream hotelImageStream = hotalImages.getInputStream();
	        InputStream roomImageStream = roomImages.getInputStream();
	         
	        System.out.println(name);
	        JsonObject json=new JsonObject();
	        
	        String sql = "INSERT INTO hotel (pId, name, description, Address, city, state, zipCode, phone, email, roomsNo, price, checkInTime, checkOutTime, type, wifi, parking, swimmingPool, restaurant, gym, imageHotel, room) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	        
//	        response.setContentType("application/json");
//	        response.setCharacterEncoding("UTF-8");

	        
	        try(Connection conn=Connect.setConnection();
	        		PreparedStatement ps=conn.prepareStatement(sql)){
	        	
	        	ps.setInt(1, Integer.parseInt((String) adminId)); 
                ps.setString(2, name);
                ps.setString(3, description);
                ps.setString(4, Address);
                ps.setString(5, City);
                ps.setString(6, state);
                ps.setString(7, ZipCode);
                ps.setLong(8, Phone);
                ps.setString(9, email);
                ps.setInt(10, roomCount);
                ps.setInt(11, price);
                ps.setTime(12, Time.valueOf(checkIn));
                ps.setTime(13, Time.valueOf(checkOut));
                ps.setString(14, propertyType);
                
                ps.setBoolean(15, amenities != null && Arrays.asList(amenities).contains("wifi"));
                ps.setBoolean(16, amenities != null && Arrays.asList(amenities).contains("parking"));
                ps.setBoolean(17, amenities != null && Arrays.asList(amenities).contains("pool"));
                ps.setBoolean(18, amenities != null && Arrays.asList(amenities).contains("restaurant"));
                ps.setBoolean(19, amenities != null && Arrays.asList(amenities).contains("gym"));
                
                ps.setBlob(20, hotelImageStream);
                ps.setBlob(21, roomImageStream);
                
                ps.executeUpdate();

                //response.getWriter().write("Hotel property added successfully!");
                
                json.addProperty("code",1);
	        	
                response.getWriter().print(json.toString());
	        } catch (SQLException e) {
	        	System.out.println(e.getMessage());
				json.addProperty("code",-1);
	        	
                response.getWriter().print(json.toString());
			}
		}
		
        
        
		
	}
}

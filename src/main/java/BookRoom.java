

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

import DataBase.ConnectDataBase;

/**
 * Servlet implementation class BookRoom
 */
@WebServlet("/BookRoom")
public class BookRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ConnectDataBase connectdb = new ConnectDataBase();
		Connection con = connectdb.getCon();
		HttpSession session =request.getSession();
		if(session.getAttribute("username")==null)
			response.sendRedirect("./LogIn.jsp");
		else
		{
			
			String username=session.getAttribute("username").toString();
	        String sqlQ="Insert into  bookings(roomname , customername,guests,rooms,checkInDate,checkOutDate,TotalFees) Values( '"+request.getParameter("roomname")+"' , '"+username+"' , '"+request.getParameter("guests")+"' , '"+request.getParameter("rooms")+"' , '"+request.getParameter("checkInDate")+"' , '"+request.getParameter("checkOutDate")+"' , '"+request.getParameter("TotalFees")+"');";
	        
	        System.out.print(request.getParameter("roomname"));
	        try {
	        	
	        	 Statement st = con.createStatement();
	             st.executeUpdate(sqlQ);
	             
	             
	             response.sendRedirect("./Rooms.jsp");
	     		
	        } catch(Exception e) {
	        	System.out.print(e);
	        }
	       
			
		}
		
		
		
		
	}

}

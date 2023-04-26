

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataBase.ConnectDataBase;

/**
 * Servlet implementation class Rooms
 */
@WebServlet("/Rooms")
public class Rooms extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ConnectDataBase connectdb = new ConnectDataBase();
		Connection con = connectdb.getCon();
		
		
		
        String sqlQ="Insert into  Rooms(name , capacity,TotalRoom,PricePerDay) Values( '"+request.getParameter("name")+"' , '"+request.getParameter("capacity")+"' , '"+request.getParameter("totalroom")+"' , '"+request.getParameter("PricePerDay")+"');";
        
        System.out.print(sqlQ);
        try {
        	
        	 Statement st = con.createStatement();
             st.executeUpdate(sqlQ);
             
             
             response.sendRedirect("Admin.jsp");
     		
        } catch(Exception e) {
        	System.out.print(e);
        }
       
		
		
		
		
		
	}

}



import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataBase.ConnectDataBase;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ConnectDataBase connectdb = new ConnectDataBase();
		Connection con = connectdb.getCon();
		
		
		
        String sqlQ="Insert into  customers(name , email,password) Values( '"+request.getParameter("name")+"' , '"+request.getParameter("Email")+"' , '"+request.getParameter("password")+"');";
        
        System.out.print(sqlQ);
        try {
        	
        	 Statement st = con.createStatement();
             st.executeUpdate(sqlQ);
             
             
             response.sendRedirect("LogIn.jsp");
     		
        } catch(Exception e) {
        	System.out.print(e);
        }
       
		
		
	}

}

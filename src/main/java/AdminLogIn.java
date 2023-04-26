

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DataBase.ConnectDataBase;

/**
 * Servlet implementation class AdminLogIn
 */
@WebServlet("/AdminLogIn")
public class AdminLogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		response.sendRedirect("AdminLogin.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ConnectDataBase connectdb = new ConnectDataBase();
		Connection con = connectdb.getCon();
		
		HttpSession session = request.getSession();
		
		
        String sqlQ="select * from  admin where email= '"+request.getParameter("Email")+"';";
        
        System.out.print(sqlQ);
        try {
        	
        	 Statement st = con.createStatement();
        	 ResultSet rs =st.executeQuery(sqlQ);
             while (rs.next()) {
                 
                	 if(rs.getString("password").equals(request.getParameter("password")))
                	 {
                		 
                		 session.setAttribute("username", rs.getString("name"));
                		 session.setAttribute("email", rs.getString("email"));

                         response.sendRedirect("Admin.jsp");
                		 break;
                		 
                	 }
                 
                 
             }
             if(session.getAttribute("email").equals( rs.getString("name")))
             response.sendRedirect("AdminLogin.jsp");
     		
        } catch(Exception e) {
        	System.out.print(e);
        	response.sendRedirect("AdminLogin.jsp");
        }
		
		
		
		
		
	}

}



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
 * Servlet implementation class RoomDelete
 */
@WebServlet("/RoomDelete")
public class RoomDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
String pagename=request.getParameter("pagename");
		
		ConnectDataBase connectdb = new ConnectDataBase();
		Connection con = connectdb.getCon();
		
		
		
        String sqlQ="Delete from  rooms where name='"+pagename+"';";
        
        System.out.print(pagename);
        try {
        	
        	 Statement st = con.createStatement();
             st.executeUpdate(sqlQ);
             
             
             response.sendRedirect("Admin.jsp");
     		
        } catch(Exception e) {
        	System.out.print(e);
        }
       
		
		
		
	}

	

}

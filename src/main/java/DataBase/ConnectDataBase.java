package DataBase;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDataBase {
	Connection con;
    public Connection getCon(){
    	 try {
    	        String connectionURL = "jdbc:mysql://localhost:3306/hotelelite";
    	        Connection connection = null; 
    	        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    	        connection = DriverManager.getConnection(connectionURL, "root", "12345");
    	        if(!connection.isClosed())
    	            con=connection;
    	        	System.out.println("Successfully connected to " + "MySQL server using TCP/IP...");
    	        
    	    }catch(Exception ex){
    	       System.out.println("Unable to connect to database"+ex);
    	    }   
    return con;
    }
}

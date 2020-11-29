package JavaPacakge;


import java.sql.*;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DBconnection {
     String r;
       private static Connection con=null;
    public Connection DBconnection(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp","root","");
            System.out.println("Connection Established");
           // r="Connection Established";
        } catch (ClassNotFoundException ex) {
            System.out.println("Connection Problem:"+ex);
             //r="Problem12";
        } catch (SQLException ex) {  
            
        }
          
        return con;
    
       // return r;
    }
    
}

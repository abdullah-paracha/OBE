package JavaPacakge;

 

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author maqee
 */
public class AdminLogin1 extends HttpServlet {

   
    public static String Admin;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      Admin= request.getParameter("User Name");
       String Pass=request.getParameter("Password");
       DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st;
        try {
            ResultSet rs;
            st=con.createStatement();
           rs= st.executeQuery("select Password from admin where Reg_No='"+Admin+"';");
           rs.next();
           String s=rs.getString(1);
           System.out.print(Pass);
            System.out.print(s);
           if(Pass.equals(s))
           {
                response.sendRedirect("http://localhost:8080/EnterpriseApplication2-war/newjsp.jsp");
               System.out.println("My Watch Has Ended");
           }
           else
           {
              response.sendRedirect("http://localhost:8080/EnterpriseApplication2-war/Page1.html");
               System.out.println("Problem");
        }
        } catch (SQLException ex) {
            System.out.print(""+ex);
        }
    }


    

}

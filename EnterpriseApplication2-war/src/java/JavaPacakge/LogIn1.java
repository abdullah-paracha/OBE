package JavaPacakge;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
 * @author NBP
 */
public class LogIn1 extends HttpServlet {

    
    public static String Reg;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      Reg= request.getParameter("User Name");
       String Pass=request.getParameter("Password");
       DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       System.out.println(Reg);
         System.out.println(Pass);
       Statement st;
        try {
            ResultSet rs;
            st=con.createStatement();
           rs= st.executeQuery("select Password from student where Reg_No='"+Reg+"';");
           rs.next();
           String s=rs.getString(1);
           System.out.print(Pass);
            System.out.print(s);
           if(Pass.equals(s))
           {
               response.sendRedirect("http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=1");
//request.getRequestDispatcher("StudentDashboard2.jsp");
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

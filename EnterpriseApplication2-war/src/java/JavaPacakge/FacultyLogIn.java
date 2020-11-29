/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaPacakge;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author HP
 */
public class FacultyLogIn extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String Regno= request.getParameter("User Name");
       String Pass=request.getParameter("Password");
       DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       System.out.println(Regno);
         System.out.println(Pass);
       Statement st;
        try {
            ResultSet rs;
            st=con.createStatement();
           rs= st.executeQuery("select Password from facaluty where Regno='"+Regno+"';");
           rs.next();
           String s=rs.getString(1);
           System.out.print(Pass);
            System.out.print(s);
           if(Pass.equals(s))
           {
            
               
               //request.getRequestDispatcher("http://localhost:8080/EnterpriseApplication2-war/FaculatyDashBoard.jsp").forward(request, response);
               
              // RequestDispatcher reqDispatcher = req.getRequestDispatcher("http://localhost:8080/EnterpriseApplication2-war/FaculatyDashBoard.jsp");
           // reqDispatcher.forward(req, res);
                   String redirectURL = "http://localhost:8080/EnterpriseApplication2-war/FaculatyDashBoard.jsp";
                  response.sendRedirect(redirectURL);
               
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

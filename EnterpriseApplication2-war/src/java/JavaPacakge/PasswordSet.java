/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaPacakge;

import static JavaPacakge.LogIn1.Reg;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author maqee
 */
public class PasswordSet extends HttpServlet {
    public static int PassSet=0;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String C_Pass=request.getParameter("CPass");
       String N_Pass=request.getParameter("NPass");
       String Confrm=request.getParameter("Confrm");
       LogIn1 id=new LogIn1();
       System.out.print(C_Pass);
       System.out.print(N_Pass);
       System.out.print(Confrm);
        System.out.print(Reg);
       DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st;
       try {
            ResultSet rs;
            st=con.createStatement();
           rs= st.executeQuery("select Password from student where Reg_No='"+Reg+"';");
           rs.next();
           String s=rs.getString(1);
             if(C_Pass.equals(s))
           {
                  if(N_Pass.equals(Confrm)){
                      PassSet=1;
                     st.executeUpdate("UPDATE student set Password='"+N_Pass+"' where Reg_No='"+Reg+"';");
                     request.setAttribute("PassSet",PassSet);
request.getRequestDispatcher("SubjectReport.jsp").forward(request,response); 
                  }
                  else
                        response.sendRedirect("http://localhost:8080/EnterpriseApplication2-war/ChangePass.html"); 
           }
           else
           {
                response.sendRedirect("http://localhost:8080/EnterpriseApplication2-war/ChangePass.html");
        }
        } catch (SQLException ex) {
            System.out.print(""+ex);
        }
    }
    }

    



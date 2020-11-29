/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class EnterCourse extends HttpServlet {
      public static String Reg;
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String[] Courses= new String[5];
            RegCourses r=new RegCourses();
             Reg=r.RegNo;
        Courses=r.getRegCourses();
         DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st;
       try{
           int i=0;
           while(Courses[i]!=null)
           {    
            st=con.createStatement();
           st.executeUpdate("INSERT INTO `"+Reg+"` (`Course_Name`, `Course_Grade`) VALUES ('"+Courses[i]+"', NULL);");
           }
       }
         catch (SQLException ex) {
            System.out.print(""+ex);
         Prep_RegFile a=new Prep_RegFile(Reg);}
    }

    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QOBE;

import JavaPacakge.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javaPacakge.*;

/**
 *
 * @author maqee
 */
public class CourseFormSubmit extends HttpServlet {
    DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st,st1,st3,st4;
      public static int NoCLOs;
  public static  String CLO,tname,tname1,tname2,Department,Semester;
  public static String[] CLOs=new String[7];
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        NoCLOs=Integer.parseInt(request.getParameter("No.ofCLos"));
        for(int i=1;i<=NoCLOs;i++)
        {
            CLO=Integer.toString(i);
            CLOs[i]=request.getParameter("CLO"+CLO);
            System.out.print(CLOs[i]);
        }
      
         tname=request.getParameter("CourseName")+"_Fall_"+request.getParameter("Session")+"CLOs";
         tname1=request.getParameter("CourseName")+"_Fall_"+request.getParameter("Session")+"Students";
          tname2=request.getParameter("CourseName")+"_Fall_"+request.getParameter("Session")+"Activities";
      //  System.out.print(tname);
     System.out.print("Executed");
      
        try {
             st = con.createStatement();
           st.executeUpdate("create table "+tname+"(CLONo int primary key not null auto_increment,CLO text(700) not null);");
        } catch (SQLException ex) {
            Logger.getLogger(CourseFormSubmit.class.getName()).log(Level.SEVERE, null, ex);
        }
        
          try {
             st1 = con.createStatement();
            st1.executeUpdate("create table "+tname1+"(Reg_No varchar(255) primary key not null, Name varchar(25) not null);");
        } catch (SQLException ex) {
            Logger.getLogger(CourseFormSubmit.class.getName()).log(Level.SEVERE, null, ex);
        }
            try {
             st = con.createStatement();
           st.executeUpdate("create table "+tname2+"(ActivityNo int primary key not null auto_increment,Activity varchar(255) not null,ActivityName varchar(255) not null ,TotalMarks int not null,Weight float not null,Date varchar(100) not null,CLOs varchar(100) not null);");
        } catch (SQLException ex) {
            Logger.getLogger(CourseFormSubmit.class.getName()).log(Level.SEVERE, null, ex);
        } 
      setCLOs();
      Department=request.getParameter("Department");
      Semester=request.getParameter("Semester");
      setStudents s=new setStudents();
     s.setStudent(tname1,Department,Semester); 
      
    }
    public void setCLOs()
    {
        
        
            try {
                for(int j=1;j<=NoCLOs;j++)
                {
                st3 = con.createStatement();
                st3.executeUpdate("insert into "+tname+" (CLO) Values('"+CLOs[j]+"');");}
                
            } catch (SQLException ex) {
                Logger.getLogger(CourseFormSubmit.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        
    }
     
 

}

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

/**
 *
 * @author maqee
 */
public class AddActivity extends HttpServlet {
    DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st,st1; 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String Activity,ActName,ActMarks,ActDate,ActWeight,ActCLOs;
         String CLO1,CLO2,CLO3;
        Activity=request.getParameter("Activity");
        ActName=request.getParameter("Name");
        ActMarks=request.getParameter("Marks");
        ActDate=request.getParameter("Date");
        ActWeight=request.getParameter("Weight");
          CLO1=request.getParameter("CLO1");
           CLO2=request.getParameter("CLO2");
             CLO3=request.getParameter("CLO3");
             ActCLOs="";
             if(CLO1!=null)
                  ActCLOs=ActCLOs+"CLO1,";
                  if(CLO2!=null )
                  ActCLOs=ActCLOs+"CLO2,";
                  if(CLO3!=null)
                  ActCLOs=ActCLOs+"CLO3";
                  
                  System.out.print(CLO3);
        int m=Integer.parseInt(ActMarks);
        float w=Float.parseFloat(ActWeight);
        
        try {
            st = con.createStatement();
            st.executeUpdate("insert into fall_2016Activities (Activity,ActivityName,TotalMarks,Weight,Date,CLOs) Values('"+Activity+"','"+ActName+"',"+m+","+w+",'"+ActDate+"','"+ActCLOs+"');");
        } catch (SQLException ex) {
            Logger.getLogger(AddActivity.class.getName()).log(Level.SEVERE, null, ex);
        }
           
        try {
            st1 = con.createStatement();
            st1.executeUpdate("alter table fall_2016students add "+ActName+" json;");
        } catch (SQLException ex) {
            Logger.getLogger(AddActivity.class.getName()).log(Level.SEVERE, null, ex);
        }       
     response.sendRedirect("http://localhost:8080/EnterpriseApplication2-war/FaculatyDashBoard.jsp");            
    }
    
             
}
                  
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QOBE;

import JavaPacakge.DBconnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author maqee
 */
public class getCourses {
    DBconnection db=new DBconnection();
        Connection con=db.DBconnection();
       Statement st1;
     public  String[][] getCourses(int Sem)
       {
           String[][] courses=new String[5][3];
                try{
           ResultSet rs2;
             st1=con.createStatement();
          rs2= st1.executeQuery("select Course_Name,Course_Code,Theory_Hours from courses where Semester="+Sem+";");
          int i=0;
          while(rs2.next())
          {
              courses[i][0]=rs2.getString(1);
               courses[i][1]=rs2.getString(2);
                courses[i][2]=Integer.toString(rs2.getInt(3));
                i++;
          }
          
       }
       catch (SQLException ex) {
            System.out.print(""+ex);}
           return courses;
       }
}

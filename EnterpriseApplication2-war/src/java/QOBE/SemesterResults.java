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
public class SemesterResults {
    DBconnection db=new DBconnection();
        Connection con=db.DBconnection();
       Statement st1;
       public String[][] getResults(String regNo,int Sem)
       {
           String[][] results=new String[5][3];
           try{
           ResultSet rs2;
             st1=con.createStatement();
          rs2= st1.executeQuery("select * from `"+regNo+"` where Semester="+Sem+";");
          int i=0;
          while(rs2.next())
          {
              results[i][0]=Integer.toString(rs2.getInt(1));
              results[i][1]=rs2.getString(2);
              results[i][2]=rs2.getString(3);
              i++;
              
          }
       
           }
       catch (SQLException ex) {
            System.out.print(""+ex);}
           return results;
      
       }
           
    
}

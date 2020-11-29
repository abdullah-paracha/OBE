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
public class getCLOs {
     int n;
     DBconnection db=new DBconnection();
        Connection con=db.DBconnection();
       Statement st1,st2;
       public int getNumOfClo()
       {
           try{
           ResultSet rs2;
             st2=con.createStatement();
          rs2= st2.executeQuery("select count(CLO) from fall_2016CLOs;");
          rs2.next();
           n=rs2.getInt(1);
       }
       catch (SQLException ex) {
            System.out.print(""+ex);}
       return n;  
       }
    public String[] getCLOs()
    {
      String[] CLOs=new String[n];    
       try{
           ResultSet rs1;
             st1=con.createStatement();
          rs1= st1.executeQuery("select CLO from fall_2016CLOs;");
          int i=0;
             while(rs1.next())
             {CLOs[i]=rs1.getString(1);
          System.out.print(CLOs[i]);
             i++;}
       }
       catch (SQLException ex) {
            System.out.print(""+ex);}
       return CLOs;  
    }
    
}

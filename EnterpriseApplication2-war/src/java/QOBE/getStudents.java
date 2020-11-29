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
public class getStudents {
    int num;
     DBconnection db=new DBconnection();
        Connection con=db.DBconnection();
       Statement st1,st2,st3;
    public int getNumberOfStudents()
    {
        try{
        ResultSet rs3;
             st3=con.createStatement();
          rs3= st3.executeQuery("select count(Reg_No) from fall_2016students;");
              rs3.next();
              num=rs3.getInt(1);
        }
                 catch (SQLException ex) {
            System.out.print(""+ex);}
        return num;
    }
    public String[][] getName()
    {
        String[][] Name=new String[num][2];
    
       try{
           ResultSet rs1;
             st1=con.createStatement();
          rs1= st1.executeQuery("select Name,Reg_No from fall_2016students;");
          int i=0;
             while(rs1.next())
             {Name[i][0]=rs1.getString(1);
             Name[i][1]=rs1.getString(2);
          //System.out.print(Name[i]);
             i++;}
       }
       catch (SQLException ex) {
            System.out.print(""+ex);}
       return Name;  
    }
    public String[] getReg_No()
    {
         String[] Reg_No=new String[num]; 
       try{
           ResultSet rs2;
             st2=con.createStatement();
          rs2= st2.executeQuery("select Reg_No from fall_2016students;");
          int i=0;
             while(rs2.next())
             {Reg_No[i]=rs2.getString(1);
         // System.out.print(Reg_No[i]);
             i++;}
       
           
       
    }
       catch (SQLException ex) {
            System.out.print(""+ex);}
       return Reg_No;  
    }
    
     
}

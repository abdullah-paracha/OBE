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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author maqee
 */
public class setStudents {
     DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st,st1,st2;
       String[] Name;
       String[] Reg_No;
    public void setStudent(String TableName,String Department,String Semester)        
    { int Sem=Integer.parseInt(Semester);
    int i=0,nS=0;
        try {
             
              ResultSet rs1,rs2;
              st2=con.createStatement();
             st1=con.createStatement();
             rs2= st2.executeQuery("select count(Reg_No) from Student where Semester='"+Sem+"'and Department='"+Department+"';");
             rs2.next();
             nS=rs2.getInt(1);
             Name=new String[nS];
             Reg_No=new String[nS];
          
             rs1= st1.executeQuery("select Name,Reg_No from Student where Semester='"+Sem+"'and Department='"+Department+"';");
           
             while(rs1.next())
             {
                 Name[i]=rs1.getString(1);
                 Reg_No[i]=rs1.getString(2);
                 System.out.print(Name[i]);
                 System.out.print(Reg_No[i]);
                 i++;
             }
         } catch (SQLException ex) {
             Logger.getLogger(setStudents.class.getName()).log(Level.SEVERE, null, ex);
         }
        try {
                for(int j=0;j<nS;j++)
                {
                st1 = con.createStatement();
                st1.executeUpdate("insert into "+TableName+" (Reg_No,Name) Values('"+Reg_No[j]+"','"+Name[j]+"');");}
                
            } catch (SQLException ex) {
                Logger.getLogger(CourseFormSubmit.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    
}

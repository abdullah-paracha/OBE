package JavaPacakge;


import static java.lang.Integer.parseInt;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author maqee
 */
public class Prep_RegFile {
     public Prep_RegFile(String Reg )
     {
         String TableName=null;
         DBconnection db=new DBconnection();
         Connection con;
         con=db.DBconnection();
         try {
   
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("Select Name from Registrations where Number=(Select Max(Number) from registrations)");
            rs.next();
             TableName=rs.getString(1);
             st.executeUpdate("insert into "+TableName+" (RegNo) Values('"+Reg+"');");
         } catch (SQLException ex) {
            System.out.print(""+ex);
           
         }
         System.out.print(""+Reg);
         
     }
}

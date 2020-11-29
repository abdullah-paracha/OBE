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
public class getActivities {
    
     DBconnection db=new DBconnection();
        Connection con=db.DBconnection();
       Statement st1,st2;
 public int getNumOfActv()
 {int a=0;
        try {
            ResultSet rs1;
            st1=con.createStatement();
             rs1= st1.executeQuery("select Max(ActivityNo) from fall_2016Activities;");
             rs1.next();
             a=rs1.getInt(1);
        } catch (SQLException ex) {
            Logger.getLogger(getActivities.class.getName()).log(Level.SEVERE, null, ex);
        }
         return a;
 }
    public String[][] getActivities(int a)
    {
        String[][] Activities=new String[a][5];
         try {
            ResultSet rs2;
            st2=con.createStatement();
             rs2= st2.executeQuery("select Activity,ActivityName,Date,TotalMarks,CLOs from fall_2016Activities;");
             int r=0;
             while(rs2.next())
             {
                  
             for(int i=1;i<6;i++)
             {
                 //System.out.print(rs2.getString(i));
                 if(i==4)
                     Activities[r][i-1]=Integer.toString(rs2.getInt(i));
                 else
                    Activities[r][i-1]=rs2.getString(i);
             }
             r++;
             }
        } catch (SQLException ex) {
            Logger.getLogger(getActivities.class.getName()).log(Level.SEVERE, null, ex);
        }
       return Activities; 
        
    }
}

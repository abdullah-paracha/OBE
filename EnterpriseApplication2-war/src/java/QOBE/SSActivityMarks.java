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
public class SSActivityMarks {
     DBconnection db=new DBconnection();
        Connection con=db.DBconnection();
       Statement st1,st2;
    public String[] getActivitiesName(int NumAct)
    { String[] Act=new String[NumAct];
    int i=0;
    try {
            ResultSet rs1;
            st1=con.createStatement();
             rs1= st1.executeQuery("select ActivityName from fall_2016Activities;");
             while(rs1.next())
             {
             Act[i]=rs1.getString(1);
                  i++;}
             
        } catch (SQLException ex) {
            Logger.getLogger(getActivities.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Act;
    }
   // public int[] getActivitiesNum(String ActName)
    {
        
    }
}

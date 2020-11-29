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
public class UserInfo {
    DBconnection db=new DBconnection();
        Connection con=db.DBconnection();
       Statement st1;
       public String[] getUserInfo(String regNo)
       {
           String[] UserInfo=new String[7];
           try{
           ResultSet rs2;
             st1=con.createStatement();
          rs2= st1.executeQuery("select Name,Reg_No,Department,Email,Phone,Semester,Session from student where Reg_No='"+regNo+"';");
          rs2.next();
          for(int i=0;i<7;i++){
              if(i==5)
                  UserInfo[i]=Integer.toString(rs2.getInt(i+1));
              else
                  UserInfo[i]=rs2.getString(i+1);
              System.out.println(UserInfo[i]);
       }
           }
       catch (SQLException ex) {
            System.out.print(""+ex);}
           return UserInfo;
      
       }
           
}
    


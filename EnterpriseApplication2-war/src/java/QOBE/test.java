/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QOBE;

import JavaPacakge.DBconnection;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
 
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author maqee
 */
public class test {
     public static void main(String args[])
{
    String test = "qazwsx<a href=\"http://localhost:8080/EnterpriseApplication2-war/Start.html\">Take me to IIUI_OBE Portal</a>fdgfdhgfd"
            + "<a href=\"http://localhost:8080/EnterpriseApplication2-war/Start.html\">Take me to StackOverflow2</a>dcgdf";

    String regex = "<a href=(\"[^\"]*\")[^<]*</a>";

    Pattern p = Pattern.compile(regex);

    Matcher m = p.matcher(test);
    System.out.println(m.replaceAll("$1"));
    
   //setAttendance1 s=new setAttendance1();
   //s.setAttendance1();
    
       /* JSONObject jo = new JSONObject();
         JSONArray messages = new JSONArray();      
        jo.put("marks",10);*/
    }
 
}

    /*public static void main(String args[])
    {
         DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st,st1;
         JSONObject jo = new JSONObject();
jo.put("firstName", "John");
jo.put("lastName", "Deol");
 
JSONArray ja = new JSONArray();
ja.add(jo);
String data=ja.toString();
int len=data.length();
 char[] d=new  char[len];
for(int i=1;i<len-1;i++)
    d[i-1]=data.charAt(i);
 
 try {
                   st = con.createStatement();
                st.executeUpdate("update sp_fall_2015Students set Assignment01='"+jo+"' where Reg_No='15-CP-29';");
             } catch (SQLException ex) {
                 Logger.getLogger(importActivity.class.getName()).log(Level.SEVERE, null, ex);
             }

 
System.out.println(jo.toString());
    }
    
}*/

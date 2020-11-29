/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QOBE;

import JavaPacakge.DBconnection;
import static QOBE.StudentCloEvalution.nA;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author maqee
 */
public class SSActivityMarks1 {
    DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st;
    public String[] getCloPercentage(String regNo,String Activity,String[] Clo,int i)
    {
        String[] CLOs=new String[i];
         for(int b=0;b<i;b++)
                 {
                  
                         String sel=Activity+"->'$."+Clo[b]+"' "+Activity;
                          String query="Select "+ sel +" from fall_2016students where Reg_No='"+regNo+"';" ;
                          
                         try{
                             ResultSet rs1;
                   st=con.createStatement();
                 rs1= st.executeQuery(query);
                 rs1.next();
                 String p=rs1.getString(1);
                // System.out.println(p);
                 if(p!=null){
                  CLOs[b]=p;
             }
                 
                         }
                        catch (SQLException ex) {
                             System.out.print(""+ex);}
                     }         
       return CLOs;
    
}
   public double getMarks(String regNo,String Activity)
    {
   double Marks=0.0;
        String sel=Activity+"->'$.Marks' "+Activity;
        String query="Select "+ sel +" from fall_2016students where Reg_No='"+regNo+"';" ;
                          
                         try{
                             ResultSet rs1;
                   st=con.createStatement();
                 rs1= st.executeQuery(query);
                 rs1.next();
                 String p=rs1.getString(1);
                // System.out.println(p);
                 if(p!=null){
                     try{
                 int ma=Integer.parseInt(p);
                 Marks=new Double(ma);
                          }
                     catch(NumberFormatException e)
                     {
                         Marks=Float.parseFloat(p);
                     }
                   }
                 }
                 
                 catch (SQLException ex) {
                             System.out.print(""+ex);}
        return Marks;
    }
   public String[] getCLOs(String Activity){
       String str=null;
       String[] clos;
       try{
       ResultSet rs;
             st=con.createStatement();
          rs= st.executeQuery("select CLOs from fall_2016activities where ActivityName='"+Activity+"';");
          rs.next();
          str=rs.getString(1);
       }
       catch (SQLException ex) {
            System.out.print(""+ex);}  
       
       clos=str.split(",");
   return clos;
   }
   
   }
                         

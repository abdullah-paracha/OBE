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
public class CloPerformanceEvaluate {
     public static int[] Perform;
     DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st;
    public int[] getPerformance(int nC,int nS,String[] Reg_No)
    {
        
       
         getActivities a=new getActivities();
          int nA=a.getNumOfActv();
             String[][] Activities=new String[nA][5];
             Activities=a.getActivities(nA);
             String[] ActName=new String[nA];
             for(int i=0;i<nA;i++)
             ActName[i]=Activities[i][1];
           
        
           
         
         Perform=new int[nS];
         
             
             for(int j=0;j<nS;j++)
             {
                 Perform[j]=0;
                 int d=0;
                 for(int b=0;b<nA;b++)
                 {                
                         String sel=ActName[b]+"->'$.CLO"+Integer.toString(nC+1)+"' "+ActName[b];
                          String query="Select "+ sel +" from fall_2016students where Reg_No='"+Reg_No[j]+"';" ;
                          System.out.print(sel);
                         try{
                             ResultSet rs1;
                   st=con.createStatement();
                 rs1= st.executeQuery(query);
                 rs1.next();
                 String p=rs1.getString(1);
                 System.out.println(p);
                 if(p!=null){
                     Perform[j]=Perform[j]+Integer.parseInt(p);
                 d++;}
                 
                         }
                        catch (SQLException ex) {
                             System.out.print(""+ex);}
                     }
                     Perform[j]=Perform[j]/d;
                    // System.out.println(Perform[j]);
                 }
          return Perform;   
    }
    
}

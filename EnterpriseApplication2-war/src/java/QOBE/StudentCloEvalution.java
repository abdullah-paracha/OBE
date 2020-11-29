/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QOBE;

import JavaPacakge.DBconnection;
import static QOBE.CloPerformanceEvaluate.Perform;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author maqee
 */
public class StudentCloEvalution {
    DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st;
      public static int nA;
       public static String[][] Activities=new String[nA][5];
       public int[] getStudentPerformance(String reg_no,int nC)
       {
           int[] StdPerfm=new int[nC];
            getActivities a=new getActivities();
          nA=a.getNumOfActv();
            
             Activities=a.getActivities(nA);
             String[] ActName=new String[nA];
             for(int i=0;i<nA;i++)
             ActName[i]=Activities[i][1];
             System.out.print(reg_no);
           for(int j=0;j<nC;j++)
             {
                 StdPerfm[j]=0;
                 int d=0;
                 for(int b=0;b<nA;b++)
                 {
                  
                         String sel=ActName[b]+"->'$.CLO"+Integer.toString(j+1)+"' "+ActName[b];
                          String query="Select "+ sel +" from fall_2016students where Reg_No='"+reg_no+"';" ;
                          
                         try{
                             ResultSet rs1;
                   st=con.createStatement();
                 rs1= st.executeQuery(query);
                 rs1.next();
                 String p=rs1.getString(1);
                // System.out.println(p);
                 if(p!=null){
                    StdPerfm[j]=StdPerfm[j]+Integer.parseInt(p);
                 d++;}
                 
                         }
                        catch (SQLException ex) {
                             System.out.print(""+ex);}
                     }
                 if(d==0)
                     d=1;
                    StdPerfm[j]=StdPerfm[j]/d;
                    System.out.println(StdPerfm[j]);
                 }
              
    
    
           return StdPerfm;
           
       }
    
}

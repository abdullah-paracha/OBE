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

public class CompileResult {
    
    public double TotalEvaluation;
       DBconnection db=new DBconnection();
       Connection con=db.DBconnection();
       Statement st;
       getActivities ac=new getActivities();
      public int num=ac.getNumOfActv();
      public double[] weight=new double[num];
  public int[] TotalMarks=new int[num];
    public  String[] Act1=new String[num];
      SSActivityMarks1 sm=new SSActivityMarks1();  
    
    public double getTotaEvaluation(String reg_No)
    {
         getActivities();
        double total=0;
        for(int i=0;i<num;i++)
        {
     double marks=sm.getMarks(reg_No, Act1[i]);
     marks=marks/TotalMarks[i];
     total=total+(marks*weight[i]);
        }
     return total;
    }
       public void getActivities()
       {
         
           try {
               ResultSet rs2;
               st=con.createStatement();
               rs2= st.executeQuery("select ActivityName,Weight,TotalMarks from fall_2016activities;");
               int i=0;
               while(rs2.next())
               {
                   
                   Act1[i]=rs2.getString(1);
                   weight[i]=rs2.getFloat(2);
                   TotalMarks[i]=rs2.getInt(3);
                       i++;
               }
           } catch (SQLException ex) {
               Logger.getLogger(CompileResult.class.getName()).log(Level.SEVERE, null, ex);
           }
           double sum=0;
           for(int j=0;j<num;j++)
           {
               sum=sum+weight[j];
           }
           TotalEvaluation=sum;
           //return Act1;
       }
public String[] getGrades(double max,double patch,double fthrsh,double[] perf)
{
    double m,mg;
    int len=perf.length;
    String[] Grades=new String[len];
   max=TotalEvaluation*(max/100);
    patch=TotalEvaluation*(patch/100);
    fthrsh=TotalEvaluation*(fthrsh/100);
    System.out.println("Max Grade At:"+max);
     System.out.println("Patch is:"+patch);
      System.out.println("Fail at:"+fthrsh);
    for(int i=0;i<len;i++)
    { 
        mg=max;
        m=perf[i];
        if (m>=mg){
            Grades[i]="A";
            }
        else if(m>=(mg-patch) && m<mg)
        {Grades[i]="A";
        }
         else if(m>=(mg-(patch*2)) && m<(mg-patch))
        {Grades[i]="B+";
        }
         else if(m>=(mg-(patch*3)) && m<(mg-patch*2))
        {Grades[i]="B";
        }
       else if(m>=(mg-(patch*4)) && m<(mg-(patch*3)))
        {Grades[i]="B";
        }
         else if(m>=(mg-(patch*5)) && m<(mg-(patch*4)))
        {Grades[i]="C+";
        }
          else if(m>=(mg-(patch*6)) && m<(mg-(patch*5)))
        {Grades[i]="C";
        }
           else if(m>=(mg-(patch*7)) && m<(mg-(patch*6)))
        {Grades[i]="C";
        }
           else if(m>=fthrsh && m<(mg-(patch*7)))
        {Grades[i]="D";
         
        }
           else if(m<fthrsh)
         {
            Grades[i]="F"; 
         }
    }
    return Grades;
}
public int[] getPlaotData(String[] grades)
{
    int[] data=new int[10];
    for(int j=0;j<10;j++)
        data[j]=0;
    int len=grades.length;
    for(int i=0;i<len;i++)
    {
        switch(grades[i])
        {
            case "A":
                data[0]=data[0]+1;
                break;
            case "B":
                data[1]=data[1]+1;
                break;
            case "B+":
                data[2]=data[2]+1;
                break;
            case "C":
                data[3]=data[3]+1;
                break;    
            case "C+":
                data[4]=data[4]+1;
                break;  
            case "D":
                data[5]=data[5]+1;
                break;
            case "D+":
                data[6]=data[6]+1;
                break;    
           // case "C-":
               // break;    
            //case "D":
              //  break;    
            case "F":
                data[9]=data[9]+1;
                break;
            default:
            {       data[7]=data[7]+1;
                     data[8]=data[8]+1;
            }       
            
        }
    }
    return data;
}
    
}

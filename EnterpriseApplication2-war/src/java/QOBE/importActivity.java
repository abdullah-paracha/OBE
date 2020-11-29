/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QOBE;
import JavaPacakge.DBconnection;
import java.io.*;
 
import java.util.Iterator;
 
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import java.sql.*; 
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.json.simple.JSONObject;

/**
 *
 * @author maqee
 */
@SuppressWarnings("unchecked")
public class importActivity {
    DBconnection db=new DBconnection();
       java.sql.Connection con=db.DBconnection();
       Statement st,st1;
        String p,Reg_No;
        double marks;
        String[] key=new String[7];
    public importActivity(String Act,String p)
    {
        key[0]="Marks";
        getPatern(Act);
    System.out.print(p);  
    try {
            FileInputStream excelFile = new FileInputStream(new File(p));
            XSSFWorkbook workbook = new XSSFWorkbook(excelFile);
            XSSFSheet datatypeSheet = workbook.getSheetAt(0);
            Iterator<Row> iterator = datatypeSheet.iterator();

            while (iterator.hasNext()) {

                Row currentRow = iterator.next();
                Iterator<Cell> cellIterator = currentRow.iterator();
int c=0;
JSONObject jo = new JSONObject();
                while (cellIterator.hasNext()) {

                    Cell currentCell = cellIterator.next();
                    //getCellTypeEnum shown as deprecated for version 3.15
                    //getCellTypeEnum ill be renamed to getCellType starting from version 4.0
                    if (currentCell.getCellType()==CellType.STRING) {
                        Reg_No=currentCell.getStringCellValue();
                    } else if (currentCell.getCellType() == CellType.NUMERIC) {
                        marks=currentCell.getNumericCellValue();
                        jo.put(key[c],marks);
                         c++;
                    }
                    

                }
                try {
                   st = con.createStatement();
                st.executeUpdate("update fall_2016Students set "+Act+"='"+jo+"' where Reg_No='"+Reg_No+"';");
             } catch (SQLException ex) {
                 Logger.getLogger(importActivity.class.getName()).log(Level.SEVERE, null, ex);
             }

            }
        } 
       
        catch (IOException e) {
            e.printStackTrace();
        }
    }
     public void getPatern(String Act)
        {
            String CLOs=null;
             try {
            ResultSet rs2;
            st1=con.createStatement();
             rs2= st1.executeQuery("select CLOs from fall_2016Activities where ActivityName='"+Act+"';");
             rs2.next();
             CLOs=rs2.getString(1);
             }
             catch (SQLException ex) {
            Logger.getLogger(getActivities.class.getName()).log(Level.SEVERE, null, ex);
        }
             System.out.print(CLOs);
             String[] k=CLOs.split(",");
            int n=k.length;
            for(int i=0;i<n;i++)
            {
                key[i+1]=k[i];
                 //System.out.println(key[i+1]);
            }
             //int len=CLOs.length();
             //char[] k=new char[4];
           // int i=0,n=1; 
           /* while(i<len)
            {
                for(int j=0;j<4;j++)
                {
                  k[j]=CLOs.charAt(i);
                  i++;
                }
                i++;
                String s=new String(k);
                key[n]=s;
                n++;
                System.out.println(key[n]);
            }*/
                 
             
        }
}

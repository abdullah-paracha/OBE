package JavaPacakge;

import static java.awt.Color.*;
import java.io.*;
import java.sql.*;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFCell;

public class ExcelFile {
        public ExcelFile( ){
             DBconnection ct=new DBconnection();
           Connection con=ct.DBconnection();
          Statement st;
                try {
                    st = con.createStatement();
                         ResultSet rs1=st.executeQuery("Select Name from Registrations where Number=(Select Max(Number) from registrations)");
            rs1.next();
            String TableName=rs1.getString(1);
            ResultSet rs=null;
                   
                   rs = st.executeQuery("Select * from "+TableName+";");
                    

                        HSSFWorkbook wb = new HSSFWorkbook();
                        HSSFSheet sheet = wb.createSheet("Excel Sheet");
                        HSSFRow rowhead = sheet.createRow((short) 0);
                       
                         
                         rowhead.createCell((short) 0).setCellValue("RegNo");
                        

                        int index = 1;
                        while (rs.next()) {

                                HSSFRow row = sheet.createRow((short) index);
                                row.createCell((short) 0).setCellValue(rs.getString(1));
                                
                                index++;
                        }
                        FileOutputStream fileOut = new FileOutputStream("C:\\Users\\Public\\Downloads\\Registration_"+TableName+".xls");
                        wb.write(fileOut);
                        fileOut.close();
                        System.out.println("Data is saved in excel file. ");
                        
                } catch (Exception e) {
                    System.out.println("Faliure");
                     System.out.println(""+e);
     
                }
        }
}
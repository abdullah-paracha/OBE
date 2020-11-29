/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QOBE;

import JavaPacakge.DBconnection;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author maqee
 */
public class setAttendance1 {
    public void setAttendance(String file) throws IOException
    {
        DBconnection db=new DBconnection();
            java.sql.Connection con=db.DBconnection();
            Statement st,st1;
            String p,Reg_No=null;
            double atten=0;
        FileInputStream excelFile=null;
        try {
            
            excelFile = new FileInputStream(new File(file));
            XSSFWorkbook workbook = new XSSFWorkbook(excelFile);
            XSSFSheet datatypeSheet = workbook.getSheetAt(0);
            Iterator<Row> iterator = datatypeSheet.iterator();
                    while (iterator.hasNext()) {

                Row currentRow = iterator.next();
                Iterator<Cell> cellIterator = currentRow.iterator();
int c=0;
double a=0;
                    while (cellIterator.hasNext()) {

                    Cell currentCell = cellIterator.next();
                    //getCellTypeEnum shown as deprecated for version 3.15
                    //getCellTypeEnum ill be renamed to getCellType starting from version 4.0
                    if (currentCell.getCellType()==CellType.STRING) {
                        Reg_No=currentCell.getStringCellValue();
                    } else if (currentCell.getCellType() == CellType.NUMERIC) {
                       a=a+currentCell.getNumericCellValue();
                        c++;
                    }
                    atten=(a/c)*100;
                    }
                    System.out.print(Reg_No);
                    System.out.print(atten);
                    }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(setAttendance1.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                excelFile.close();
            } catch (IOException ex) {
                Logger.getLogger(setAttendance1.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
     
        
    }
    
}

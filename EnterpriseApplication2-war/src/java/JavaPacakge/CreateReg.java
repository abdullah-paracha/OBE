package JavaPacakge;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
public class CreateReg extends HttpServlet {
public String TableName;
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         TableName=request.getParameter("tableName");
        new CreateTable(TableName);
         
     
     }
}

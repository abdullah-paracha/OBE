package JavaPacakge;


import java.sql.*;


public class CreateTable {
    Connection con;
    public CreateTable(String tname){
        DBconnection ct=new DBconnection();
        con=ct.DBconnection();
          Statement st,st1;
        try {
           
             st1 = con.createStatement();
             st1.executeUpdate("create table "+tname+"(RegNo varchar(255) primary key not null);");
             
            
            
        } catch (SQLException ex) {
            System.out.println(""+ex);
             System.out.println(""+tname);
           }        
        try{
             st = con.createStatement();
              st.executeUpdate("Insert into Registrations (Name) values('"+tname+"')");
            
        }
         catch (SQLException ex) {
            System.out.println(""+ex);
             System.out.println(""+tname);
           }        
    }
    
      
    
}

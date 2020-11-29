package JavaPacakge;

 import java.sql.*;
public class RegCourses {
      int Sem;
       public static String RegNo;
      DBconnection db=new DBconnection();
        Connection con=db.DBconnection();
    public String[] getRegCourses()
    {
        getSem();
        String[] Courses =new String[5];
         
       Statement st1;
       try{
           ResultSet rs1;
             st1=con.createStatement();
          rs1= st1.executeQuery("select Course_Name from Course where Semester='"+Sem+"';");
          int i=0;
           
          
              rs1.next();
              Courses[i]=rs1.getString(1);
          System.out.print(Courses[i]);
       
           
       
    }
       catch (SQLException ex) {
            System.out.print(""+ex);}
        return Courses;
    }
    public void getSem(){
          
       Statement st;
       LogIn1 UserInfo= new LogIn1();
        RegNo=UserInfo.Reg;
     
         
      try{ResultSet rs;
            
            st=con.createStatement();
           
           rs= st.executeQuery("select Semester from student where Reg_No='"+RegNo+"';");
           rs.next();
          Sem=rs.getInt(1);
           }
      
       catch (SQLException ex) {
            System.out.print(""+ex);}
    }
}
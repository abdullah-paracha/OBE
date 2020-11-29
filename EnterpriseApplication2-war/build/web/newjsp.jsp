<%-- 
    Document   : newjsp
    Created on : Oct 19, 2018, 2:15:43 PM
    Author     : NBP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
 <%@page import="JavaPacakge.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%  String[] Courses= new String[5];
            RegCourses r=new RegCourses();
        Courses=r.getRegCourses();
         out.println(Courses[0]);
        %><br>
         <Form method="post" action="EnterCourse"> 
       <pre>      <input type="submit" value="Register" name="Register" /></pre>
         </form>
        </body>
</html>

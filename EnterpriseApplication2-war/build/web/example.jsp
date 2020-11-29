<%-- 
    Document   : example
    Created on : Apr 12, 2019, 7:01:26 PM
    Author     : maqee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
        <% String str="You Nailed it"; %>
          var s="<%=str%>"; 
          document.write(s);
        </script>
    </body>
</html>

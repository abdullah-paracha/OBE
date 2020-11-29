<%-- 
    Document   : importActivity
    Created on : Apr 25, 2019, 2:45:46 PM
    Author     : maqee
--%>

<%@page import="QOBE.getActivities"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <% System.setProperty("java.awt.headless", "false");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>Select Activity</title>
    </head>
    <body>
          <% getActivities a=new getActivities();
          int n=a.getNumOfActv();
             String[][] Activities=new String[n][5];
             Activities=a.getActivities(n);
          %>
          <Form method="post" action="importActivity1">
          <script>
         
        var n='<%=n%>';
        var ActName=new Array();
         <%  for(int j=0;j<n;j++) { %>
              ActName[<%= j %>] = '<%= Activities[j][1] %>';
                        <%}%>
         var output="<select name='Activity'>"+"<option>"+"Select Activity"+"</option>";
          for(j=0;j<n;j++)
                       {
                           output=output+"<option>"+ActName[j]+"</option>";
                       }
                       output=output+"</select>";
                       document.write(output);
                            </script>
                            <br>
                                <br>
                                    <br>
                                 <input type="file" name="file" accept=".xlsx" />
  <br>
      <br>
          <br>
                            <input type="submit" value="Import" name="SubmitButton" />
                            </Form>
    </body>
</html>

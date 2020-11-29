<%-- 
    Document   : getStudents
    Created on : Apr 13, 2019, 7:37:17 PM
    Author     : maqee
--%>

<%@page import="QOBE.getStudents"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script src="ExportData.js"></script>
  <style>
       .well
    {background-color: #d0d6e2;
    width:60%;
    height:auto;
    margin-left:38%;
    margin-top:1%;
    border: 3px solid #3F729B
    }
    body
    {
        background-color: #212121
    }
  </style>
  <title>Class Students</title>
</head>
<body>
    <div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9"> 
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center" id="eval">
        
        <%
            getStudents s=new getStudents();
            int n=s.getNumberOfStudents();
            String[][] Name=new String[n][2];
      // String[] Reg_No=new String[n];   
        Name=s.getName();
       // Reg_No=s.getReg_No();
        %>
        <table class="table table-dark" id="tb">
            <thead>
            <th>No.</th>
            <th>Name</th>
            <th>Regestration Number</th>
            </thead>
  
</table>
        <script>
             var table = document.getElementById("tb");  
             var row;
            <% for(int j=0;j<n;j++){ %>
                row=table.insertRow(-1);
                var cell1=row.insertCell(0);
                var cell2=row.insertCell(1);
                var cell3=row.insertCell(2);
                cell1.innerHTML=<%=j+1 %>;
                cell2.innerHTML='<%=Name[j][0]%>';
                cell3.innerHTML='<%=Name[j][1]%>';
                <%}%>
                     
            </script>
            <br>
                    <br>
                 <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb','Students Enrolled')">Download</button>
           </div>  
      </div>
       
         </div>
    </div>
         </div>
         </div>
    </body>
</html>

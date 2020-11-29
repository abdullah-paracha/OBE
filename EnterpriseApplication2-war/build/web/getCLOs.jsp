<%-- 
    Document   : getCLOs
    Created on : Apr 13, 2019, 9:32:01 PM
    Author     : maqee
--%>

<%@page import="QOBE.getCLOs"%>
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
</head>
<body>
    <div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9"> 
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center" id="eval">
         <% getCLOs c=new getCLOs(); 
         int num=c.getNumOfClo();
             String[] CLOs=new String[num];
        CLOs=c.getCLOs();
        %>
        <table class="table table-dark" id="tb1">
            <thead>
            <th>#</th>
            <th>CLO</th>
            <th>Description</th>
            </thead>
  
</table>
        <script>
            
           var table = document.getElementById("tb1");  
             var row;
            <% for(int j=0;j<num;j++){ %>
                row=table.insertRow(-1);
                var cell1=row.insertCell(0);
                var cell2=row.insertCell(1);
                var cell3=row.insertCell(2);
                cell1.innerHTML=<%=j+1 %>;
                cell2.innerHTML='<%="CLO"+Integer.toString(j+1)%>';
                cell3.innerHTML='<%=CLOs[j]%>';
                <%}%>
                     
            </script>
            <br>
                    <br>
                    
                    <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb1','CLOS')">Download</button>        
                             </div>  
      </div>
       
         </div>
    </div>
         </div>
              
         </div>
    </body>
</html>

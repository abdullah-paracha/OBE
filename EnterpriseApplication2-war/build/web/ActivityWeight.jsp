<%-- 
    Document   : ActivityWeight
    Created on : Jul 11, 2020, 6:47:28 PM
    Author     : Abdullah
--%>

<%@page import="QOBE.CompileResult"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  <title>Activity Weight</title>
</head>
<body>
    <div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9"> 
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center" id="eval">
              <% CompileResult cr=new CompileResult(); 
                 cr.getActivities();
                 int n=cr.num;
                 double[] weight=new double[n];
                 String[] name=new String[n];
                 weight=cr.weight;
                 name=cr.Act1;
                 for(int i=0;i<n;i++){
                     System.out.println(name[i]);
                     System.out.println(weight[i]);
                 }

              %>
              <table class="table table-dark" id="tb">
            <thead>
            <th>No.</th>
            <th>Activity</th>
            <th>Weightage</th>
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
                cell2.innerHTML='<%=name[j]%>';
                cell3.innerHTML='<%=weight[j]+"%" %>';
                <%}%>
                     
            </script>
            <br>
                    <br>
                 <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb','ActivitiesWeight')">Download</button>                          
                             </div>  
      </div>
       
         </div>
    </div>
         </div>
         </div>
    </body>
</html>

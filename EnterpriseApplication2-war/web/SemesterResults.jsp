

<%@page import="QOBE.SemesterResults"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<html>
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
    .internal
    {
        background-color:white;
         border: 1px solid black
    }
  </style>
  <title>Results</title>
</head>
<body>
    <div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9"> 
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center" id="eval">
              <% String[][] r=new String[5][3];
    SemesterResults rs=new SemesterResults();
    %>
              <br><br>
           <div class="internal">
               <table class="table table-hover table-dark" id="tb1">       
               </table>
            <br>
   <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb1','1st Semester')">Download</button></div>
               <br><br>
            <div class="internal">
               <table class="table table-hover table-dark" id="tb2">
                   
             </table>
             <br>
   <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb2','2nd Semester')">Download</button></div>
                <br><br>
                <div class="internal">
               <table class="table table-hover table-dark" id="tb3">
                    
             </table>
                 <br>
   <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb3','3rd Semester')">Download</button></div>
                 <br><br>
                 <div class="internal">
               <table class="table table-hover table-dark" id="tb4">
                    
               </table>
                  <br>
   <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb4','4th Semester')">Download</button></div>
                 
                  <br><br>
                  <div class="internal">
               <table class="table table-hover table-dark" id="tb5">
                    
               </table>
                   <br>
   <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb5','5th Semester')">Download</button></div>
                   <br><br>
                   <div class="internal">
               <table class="table table-hover table-dark" id="tb6">
                    
               </table>
                    <br>
   <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb6','6th Semester')">Download</button></div>
                    <br><br>
                    <div class="internal">
               <table class="table table-hover table-dark" id="tb7">
                    
               </table></div>
                     <br><br>
                     <div class="internal">
               <table class="table table-hover table-dark" id="tb8">
                    
               </table></div>
                     <% 
                         String reg=request.getParameter("user");
                         %>
        <script>
            var tables=['tb1','tb2','tb3','tb4','tb5','tb6','tb7','tb8'];
            var row,col;
                           <% for(int i=0;i<6;i++){ %>
                    
                        var table=document.getElementById(tables[<%=i%>]);
            var header=['No.','Course','Grade','Semester'];
            row=table.insertRow(-1);
            for(j=0;j<4;j++)
            {
            col=row.insertCell(j);
             col.innerHTML="<b>"+header[j]+"</b>";
            }
            <%r=rs.getResults(reg,i+1); %>
var col1,col2,col3,col4;
                <%for(int j=0;j<5;j++) {%>
                  row=table.insertRow(-1);
                  col1=row.insertCell(0);
                  col2=row.insertCell(1);
                  col3=row.insertCell(2);
                  col4=row.insertCell(3);
                  col1.innerHTML=<%=j+1%>;    
             col2.innerHTML='<%=r[j][1]%>';
             col3.innerHTML='<%=r[j][2]%>';
             col4.innerHTML='<%=r[j][0]%>';
                        <%}%>
                        <%}%>
                         
            </script>
                 </div>  
      </div>
       
         </div>
    </div>
         </div>
         </div>
    </body>
</html>

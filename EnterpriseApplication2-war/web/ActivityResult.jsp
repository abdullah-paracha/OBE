<%-- 
    Document   : StudentSubjectReport
--%>

<%@page import="QOBE.getActivities"%>
<%@page import="QOBE.getCLOs"%>
<%@page import="QOBE.StudentCloEvalution"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Student Performance</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="my.js"></script>
 <script src="columns.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">  
    <br>
    <div class="col-sm-12">
  <div class="row">
        <div class="col-sm-6">
          <div class="well" id="Attendance">
            <h4>Attendance</h4>
            <script>
                drawPie(75,25,'Attendance');
                </script>
          </div>
        </div>
        <div class="col-sm-6" >
          <div class="well" id="performance">
              
               <%  
                 getCLOs c=new getCLOs(); 
         int num=c.getNumOfClo();
         int[] StdPerfm=new int[num];
         String reg_no= (String)request.getAttribute("myname"); 
         StudentCloEvalution sce=new StudentCloEvalution();
         StdPerfm=sce.getStudentPerformance(reg_no,num);
         
         %>
         
         <script>
              var cl=<%=num%>;
              var CLOs=new Array();
              var Performance=new Array();
                    for(i=1;i<=cl;i++)
                        CLOs[i-1]="CLO"+i.toString();  
 var cl=<%=num%>;
              var CLOs=new Array();
              var Performance=new Array();
                    for(i=1;i<=cl;i++)
                        CLOs[i-1]="CLO"+i.toString();
                    
<%for(int i=0;i<num;i++){%>    
    Performance[<%=i%>]=<%=StdPerfm[i]%>; 
    <%}%> 
                drawColumns("performance",CLOs,Performance);
                </script>
          </div>
        </div>
      </div>
                
                 <% getActivities a=new getActivities();
          int n=a.getNumOfActv();
             String[][] Activities=new String[n][5];
             Activities=a.getActivities(n);
          %>
          
      <div class="row">
        <div class="col-sm-12">
          <div class="well">
              <table class="table table-dark" id="tb">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Activity</th>
      <th scope="col">Marks</th>
      <th scope="col">CLOs</th>
    </tr>
  </thead>
  <tbody >
      </tbody>
</table>
  <script>
      var n=<%=n%>;
       var ActName=new Array();
          var ActMarks=new Array();
          var ActCLO=new Array();
           <%  for(int j=0;j<n;j++) { %>
              
               ActName[<%= j %>] = '<%= Activities[j][1] %>';
                 ActMarks[<%= j %>] = '<%= Activities[j][3] %>'; 
               ActCLO[<%= j %>] = '<%= Activities[j][4] %>'; <%}%> ;
                  
      for(i=0;i<n;i++){
        var table = document.getElementById("tb");      
        var row = table.insertRow(-1);
  var cell1 = row.insertCell(0);
  var cell2 = row.insertCell(1);
  var cell3 = row.insertCell(2);
  var cell4 = row.insertCell(3);
  var no=i+1;
  var ac="<a href='#'>"+ActName[i]+"</a>";
  var marks=ActMarks[i];
  var clo=ActCLO[i];
  cell1.innerHTML =no;
  cell2.innerHTML = ac;
  cell3.innerHTML = marks;
  cell4.innerHTML = clo;
      }
 
      </script>
  
          </div>
        </div>  
      </div>
      <div class="row">
        <div class="col-sm-12">
          <div class="well">
              <h2>Footer</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>


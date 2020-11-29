<%-- 
    Document   : StudentSubjectReport

--%>

<%@page import="JavaPacakge.PasswordSet"%>
<%@page import="JavaPacakge.LogIn1"%>
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
    .well
    {background-color: #d0d6e2;}
    
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #d0d6e2;
      height:180%
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>
    <%
        PasswordSet ps=new PasswordSet();
        int ch=ps.PassSet;
        %>
        <script>
            var ch=<%=ch%>;
            if (ch===1)
                alert("Changes Saved");
                    <%ps.PassSet=0;%>
            </script>
  <nav class="navbar navbar-inverse" style="height:50%">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost:8080/EnterpriseApplication2-war/Home.jsp">Student Management System</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
         <li><a href="#" onclick="UserInfo()"><span class="glyphicon glyphicon-user" id="RegNo" ></span> </a></li>
           <li><a href="#" onclick="Results()"><span class="glyphicon glyphicon-duplicate" id="RegNo" ></span> Results</a></li>
          <li><a href="http://localhost:8080/EnterpriseApplication2-war/ChangePass.html"><span class="glyphicon glyphicon-cog"></span> Change Password</a></li>
      <li><a href="#" onclick="logout()"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
    <% LogIn1 li=new LogIn1();
        String reg_no;
        reg_no=li.Reg; %>
            <script>
                var RegNo='<%=reg_no %>';
                var na=document.getElementById("RegNo");
                na.innerHTML=" "+"<h7>"+RegNo+"</h7>";
                function logout()
                {
                    alert("Are You Sure You want to LogOut");
                  //  function preventBack() { window.history.forward(); }
        <%//response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>;
      window.location = 'http://localhost:8080/EnterpriseApplication2-war/index.html';
                }
                function UserInfo()
                {
                    window.location='http://localhost:8080/EnterpriseApplication2-war/UserInfo.jsp?user='+RegNo;
                }
                function Results()
                {
                    window.location='http://localhost:8080/EnterpriseApplication2-war/SemesterResults.jsp?user='+RegNo;
                }
                </script>
<nav class="navbar navbar-inverse visible-xs">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="#">1st Semester</a></li>
        <li class="active"><a href="#">2nd Semester</a></li>
        <li><a href="#">3rd Semester</a></li>
        <li><a href="#">4th Semester</a></li>
        <li><a href="#">5th Semester</a></li>
        <li><a href="#">6th Semester</a></li>
        <li><a href="#">7th Semester</a></li>
        <li><a href="#">8th Semester</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-2 sidenav hidden-xs">
      <h2>Semester</h2>
      <ul class="nav nav-pills nav-stacked">
           <li ><a href="http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=1" >1st Semester</a></li>
        <li><a href="http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=2">2nd Semester</a></li>
        <li><a href="http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=3">3rd Semester</a></li>
        <li><a href="http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=4">4th Semester</a></li>
        <li><a href="http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=5">5th Semester</a></li>
        <li><a href="http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=6">6th Semester</a></li>
        <li><a href="http://localhost:8080/EnterpriseApplication2-war/StudentDashboard2.jsp?semester=7">7th Semester</a></li>
        <li><a href="">8th Semester</a></li>
      </ul><br>
    </div>
    <div class="col-sm-9">   
      <div class="row">
        <div class="col-sm-6">
          <div class="well" id="Attendance">
            <h4>Attendance</h4>
            <script>
                 <% 
                     String at=request.getParameter("atten");
                 //System.out.println("Atten is:"+at) ;
                 %>
                     var pres=<%=at%>;
                     var abs=100-pres;
                drawPie(pres,abs,'Attendance');
                </script>
          </div>
        </div>
        <div class="col-sm-6" >
          <div class="well" id="performance">
              
               <% 
                 getCLOs c=new getCLOs(); 
         int num=c.getNumOfClo();
         int[] StdPerfm=new int[num];
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
                drawColumns("performance",CLOs,Performance,"Overall Subject");
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
      <th scope="col">Total Marks</th>
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
  var ac="<a href='#'  id="+ActName[i]+" onclick='ActRes(this.id)'>"+ActName[i]+"</a>";
  var marks=ActMarks[i];
  var clo=ActCLO[i];
  cell1.innerHTML =no;
  cell2.innerHTML = ac;
  cell3.innerHTML = marks;
  cell4.innerHTML = clo;
      }
      </script>
      <script>
          function ActRes(ele)
          {       
         window.location.href="http://localhost:8080/EnterpriseApplication2-war/PersonalResult.jsp?activity="+ele;
    }
                
          
          </script>
  
          </div>
        </div>  
      </div>
      <div class="row">
        <div class="col-sm-12">
          <div class="well" id="footer">
              <% 
                  getCLOs cl=new getCLOs(); 
                int num1=cl.getNumOfClo();
             String[] CLOs=new String[num1];
        CLOs=cl.getCLOs();
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
            <% for(int j=0;j<num1;j++){ %>
                row=table.insertRow(-1);
                var cell1=row.insertCell(0);
                var cell2=row.insertCell(1);
                var cell3=row.insertCell(2);
                cell1.innerHTML=<%=j+1 %>;
                cell2.innerHTML='<%="CLO"+Integer.toString(j+1)%>';
                cell3.innerHTML='<%=CLOs[j]%>';
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


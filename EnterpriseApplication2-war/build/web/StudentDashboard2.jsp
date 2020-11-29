<%-- 
    Document   : StudentDashboard1

--%>

<%@page import="QOBE.getCourses"%>
<%@page import="JavaPacakge.PasswordSet"%>
<%@page import="JavaPacakge.LogIn1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Student Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .well
    {background-color: #d0d6e2;}
    
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #d0d6e2;
      height:110%
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
    <nav class="navbar navbar-inverse">
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
        <li class="active"><a href="#">1st Semester</a></li>
        <li><a href="#">2nd Semester</a></li>
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
          

      <div class="well">
        <h1>Software Engineering Department</h1>
      </div>
      
      <div class="row">
        <div class="col-sm-12">
          <div class="well">
             <h3>Subjects</h3>
  <table class="table table-sm table-dark" id="tb1">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Course Code</th>
      <th scope="col">Credit Hours</th>
       
    </tr>
  </thead>
  <tbody>
  </tbody>
     <%
          int Sem=Integer.parseInt(request.getParameter("semester"));
      String[][] co=new String[5][3];
       getCourses cour=new getCourses();
    co=cour.getCourses(Sem);
      %>
  <script>
      var table = document.getElementById("tb1");  
             var row;
            <% for(int j=0;j<5;j++){ %>
                row=table.insertRow(-1);
                var cell1=row.insertCell(0);
                var cell2=row.insertCell(1);
                var cell3=row.insertCell(2);
                var cell4=row.insertCell(3);
                cell1.innerHTML=<%=j+1 %>;
                cell2.innerHTML="<a href='http://localhost:8080/EnterpriseApplication2-war/SubjectReport.jsp?atten=75'>"+'<%=co[j][0]%>'+"</a>";
                cell3.innerHTML='<%=co[j][1] %>';
                cell4.innerHTML=<%=co[j][2] %>;
                <%}%>
      
  </script>
</table>
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


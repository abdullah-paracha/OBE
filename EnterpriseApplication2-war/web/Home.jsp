

<%@page import="QOBE.getCourses"%>
<%@page import="JavaPacakge.PasswordSet"%>
<%@page import="JavaPacakge.LogIn1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="PloColumns.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .well
    {background-color: #d0d6e2;
    height:200px;
    text-align: center
    }
     .well:hover {
  background-color:#616161; /* Green */
  color: white;
}
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #d0d6e2;
      height:200%
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
      <a class="navbar-brand" href="#">Student Management System</a>
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
      <a class="navbar-brand" href="#">Semesters</a>
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
        <div class="row cotent">
            <div class="col-sm-12">
                <div class="well" style="height:auto" id="plo">
                    <script>
                        data=[66,72,57,88,52,81,43,70,92,84,60,59];
                        DrawPlos('plo',data);
                        </script>
                </div></div></div>
        <div class="row cotent">
            <div class="col-sm-3">
                <div class="well">
                     <h2> 1</h2>
                <h2> Engineering Knowledge</h2>
            </div></div>
            <div class="col-sm-3  ">
                <div class="well">
                     <h2>2</h2>
                <h2>Problem Analysis</h2>
            </div></div>
            <div class="col-sm-3 ">
                <div class="well">
                     <h2>3</h2>
                <h2>Design/Dev of Solutions</h2>
            </div></div>
            <div class="col-sm-3 ">
                <div class="well">
                     <h2>4</h2>
                <h2>Investigation</h2>
            </div></div>
        </div>
        <div class="row cotent">
            <div class="col-sm-3">
                <div class="well">
                     <h2>5</h2>
                <h2>Modern Tool Usage</h2>
            </div></div>
            <div class="col-sm-3  ">
                <div class="well">
                     <h2>6</h2>
                <h2>The Engineer and Society</h2>
            </div></div>
            <div class="col-sm-3 ">
                <div class="well">
                     <h2>7</h2>
                <h2>Environment and Sustainability</h2>
            </div></div>
            <div class="col-sm-3 ">
                <div class="well">
                     <h2>8</h2>
                <h2>Ethics</h2>
            </div></div>
    </div>
               <div class="row cotent">
            <div class="col-sm-3">
                <div class="well">
                     <h2>9</h2>
                <h2>Individual and Team Work</h2>
            </div></div>
            <div class="col-sm-3  ">
                <div class="well">
                     <h2>10</h2>
                <h3>Communication</h3>
            </div></div>
            <div class="col-sm-3 ">
                <div class="well">
                     <h2>11</h2>
                <h2>Project Management</h2>
            </div></div>
            <div class="col-sm-3 ">
                <div class="well">
                     <h2>12</h2>
                <h2>Lifelong Learning</h2>
            </div></div>
    
    </div>
  </div>
</div>

</body>
</html>


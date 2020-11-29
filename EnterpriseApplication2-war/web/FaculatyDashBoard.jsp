<%-- 
    Document   : FaculatyDashBoard
    Created on : Apr 16, 2019, 9:48:11 PM
    Author     : maqee
--%>

<%@page import="QOBE.getActivities"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<title> FACULTY DASHBOARD</title>
<link rel="stylesheet" type="text/css" href="BUTTON.css">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column1 {
  float: left;
  width:20%;
  padding: 10px;
  height: 700px; /* Should be removed. Only for demonstration */
}
.column2 {
  float:right;
  width:70%;
  padding: 10px;
  height: 700px; /* Should be removed. Only for demonstration */
}


/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

 body{
    padding:0;
	margin:0;
	}
	.menu ul{
	list-style:none;
	margin:0;
	}
	.menu ul{
	list-style:none;
	margin:0;
	}
	.menu ul li{
	padding:15px;
	position:relative;
	width:200px;
	background-color:#f9f9f9 ;
	border-top:1px solid #BDC3C7;
	}
	.menu ul ul{
	transition:all 0.3s;
	opacity:0;
	position:absolute;
	visibility:hidden;
	left:90%;
	top:-2;
	}
	.menu ul li:hover>ul{
	opacity:1;
	visibility:visible;
	}	
	.menu ul li a{
	color:#7e7b7f;
	text-decoration:none;
	}
	table {
  border-collapse: collapse;
  width: 100%;
  font-size:16px;
  }
  input {
  width: 100%;
  }


th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
i {
  border: solid black;
  border-width: 0 3px 3px 0;
  display: inline-block;
  padding: 3px;
}

.right {
  transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
}	
.icon {
  background-color: #f2f2f2;
  border: none;
  color: #5fd900;
  padding: 0px 0px;
  font-size: 13px;
  cursor: pointer;
}
.icon:hover {
  background-color: #acaaac;
}


</style>
</head>
<body>

<h3> SUBJECT NAME(FALL-2016)<h3>

<div class="row">
  <div class="column1" style="background-color":##ffffff;>
    <div class="menu">
<ul>
<li><a href="#" onclick="compileResult()">Compile Result</a></li>
<li><a href="http://localhost:8080/EnterpriseApplication2-war/getStudents.jsp">Class Students</a> </li>
<li><a href="http://localhost:8080/EnterpriseApplication2-war/CLOsection.jsp">CLOs Attainment Graph</a> </li>
<li><a href="http://localhost:8080/EnterpriseApplication2-war/getCLOs.jsp">CLOs</a></li>
<li><a href="http://localhost:8080/EnterpriseApplication2-war/ActivityWeight.jsp">Activities Weights</a></li>
<li><a href="http://localhost:8080/EnterpriseApplication2-war/FMarks.jsp">Marks</a></li>
<li><a href="">PlOs Attainment</a></li>
<li><a href=""><p>Subjects <i class="arrow right"></i></p></a></li>
</ul>
<ul>
<li><a href="">Basic electrical engineering</a></li>
<li><a href="">linear algebra</a></li>
<li><a href="">data structures and algorithm</a></li>
</ul>
</ul>
</div>
  </div>
  <div class="column2" style="background-color":##ffffff;>
    <a href="http://localhost:8080/EnterpriseApplication2-war/AddClassActivity.html" class="btn">add class activity</a>
	
<a href="http://localhost:8080/EnterpriseApplication2-war/importActivity.jsp" class="btn1">import class activity</a>
<a onclick="location.href='http://localhost:8080/EnterpriseApplication2-war/updateSection.html';" class="btn2">update section</a>
<a href="#" class="btn3">export class activities</a>
<a onclick="location.href='http://localhost:8080/EnterpriseApplication2-war/importActivity.jsp';" class="btn4">import activity outcome</a> 
<pre>      </pre>
<div style='overflow-x:auto;'>
    <% getActivities a=new getActivities();
          int n=a.getNumOfActv();
             String[][] Activities=new String[n][5];
             Activities=a.getActivities(n);
          %>
    <script>
       
            function compileResult()
            {
                var m=90;
                var p=5;
                var f=50;
                window.location="http://localhost:8080/EnterpriseApplication2-war/CompilResults.jsp?m="+m+"&p="+p+"&f="+f;
            }   
        var n='<%=n%>';
        var Activity=new Array();
          var ActName=new Array();
          var ActMarks=new Array();
          var ActDate=new Array();
          var ActCLO=new Array();
           <%  for(int j=0;j<n;j++) { %>
             Activity[<%= j %>] = '<%= Activities[j][0] %>';
               ActName[<%= j %>] = '<%= Activities[j][1] %>';
                ActDate[<%= j %>] = '<%= Activities[j][2] %>';
               ActMarks[<%= j %>] = '<%= Activities[j][3] %>'; 
               ActCLO[<%= j %>] = '<%= Activities[j][4] %>';
               
              <%}%> 
                       
                   var output="<table>"+"<tr>"+"<th>"+"ACTIVITY"+"</th>";
                   output=output+"<th>"+"NAME"+"</th>";
                   output=output+"<th>"+"Total Marks"+"</th>";
                   output=output+"<th>"+"DATE"+"</th>"; 
                   
                   output=output+"<th>"+"CLOs"+"</th>"+"</tr>"; 
                   
                 
                       
                       for(j=0;j<n;j++)
                       {
                           output=output+"<tr>";
                           output=output+"<td>"+Activity[j]+"</td>";
                           output=output+"<td>"+"<a href='#' id="+ActName[j]+" onclick='ActRes(this.id)'>"+ActName[j]+"</a>"+"</td>";
                           output=output+"<td>"+ActMarks[j]+"</td>";
                           output=output+"<td>"+ActDate[j]+"</td>";                           
                              output=output+"<td>"+ActCLO[j]+"</td>";
                    output=output+"<td>"+"<button class='icon'><i class='fa fa-edit'>"+"</i>"+"</button>"+"<button  class='icon'>"+"<i class='fa fa-trash'>"+"</i>"+"</button>"+"<button class='icon'>"+"<i class='fa fa-upload'>"+"</i>"+"</button><button class='icon'>"+"<i class='fa fa-download'>"+"</i>"+"</button>"+"<button class='icon'>"+"<i class='fa fa-file-word-o'>"+"</i></button></button>"+"<button class='icon'>"+"<i class='fa fa-file-excel-o'>"+"</i>"+"</button>"+"</td>";
      output=output+"</tr>";                   
    }    
                output=output+"</table>";
                            document.write(output);
                           
          function ActRes(ele)
          {       
              
         window.location.href="http://localhost:8080/EnterpriseApplication2-war/SSActivityResult.jsp?activity="+ele;
    }
                
              
        </script>
	 
   
  
</div>

 

</body>
</html>


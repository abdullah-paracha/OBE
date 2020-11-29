<%-- 
    Document   : CompilResults
    Created on : Jul 10, 2019, 6:19:13 PM
    Author     : maqee
--%>

<%@page import="JavaPacakge.LogIn1"%>
<%@page import="QOBE.getStudents"%>
<%@page import="QOBE.SSActivityMarks1"%>
<%@page import="QOBE.getActivities"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="MinMaxColumns.js"></script>
  <style>
       .well
    {background-color: #d0d6e2;
    width:100%;
    height:auto;
    margin-left:18%;
    margin-top:1%;
    border: 3px solid #3F729B
    }
    body
    {
        background-color: #212121
    }
  </style>
   <title>Activity Result</title>
</head>
<body>
<% double Marks;
double min=0,max=0,avg,sum=0,temp;
           String[] cloP;
               String str=request.getParameter("activity");
          SSActivityMarks1 m=new  SSActivityMarks1();
          String[] clos=m.getCLOs(str);
       int i=clos.length;
       getStudents st=new getStudents();
       int NumSt=st.getNumberOfStudents();
       String[] students=st.getReg_No();
       for(int j=0;j<NumSt;j++)
       {
          temp=m.getMarks(students[j],str);
          sum=sum+temp;
          if(max<temp)
              max=temp;
          if (j==0)
              min=temp;
          if(min>temp)
              min=temp;
       }
       avg=sum/NumSt;
       LogIn1 user=new LogIn1();
       String reg=user.Reg;
      Marks=m.getMarks(reg,str);
      cloP=m.getCloPercentage(reg,str,clos,i); 
%>
<div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9"> 
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center" id="eval">
 <script>
                  var data=new Array();
                  data[0]=<%=max %>;
                  data[1]=<%=avg %>;
                  data[2]=<%=min %>;
                  data[3]=<%=Marks %>;
                  var data1=[10,6,9,4,5,6,7,8,9,1];
                  var activity='<%=str %>';
                  DrawRe('eval',data,activity); 
                  </script>
                  <br> 
             <button type="button" class="btn btn-primary" id="plain" onclick="PlainUpdate()">Plain</button>
                  &nbsp &nbsp &nbsp
              <button type="button" class="btn btn-success" id="inverted" onclick="InvertedUpdate()">Inverted</button>
                  &nbsp &nbsp &nbsp
              <button type="button" class="btn btn-warning" id="polar" onclick="PolarUpdate()">Polar</button>
             <br>
              <br>
                <table class="table table-dark" id="tb">
</table>
  <script>
       var table = document.getElementById("tb");  
        var header=table.createTHead();
        var Hrow = header.insertRow(0); 
  var cell1 = Hrow.insertCell(0);
  var cell2 = Hrow.insertCell(1);
  var cell3 = Hrow.insertCell(2);
    var cell4 = Hrow.insertCell(3);
  cell1.innerHTML ="<b>"+"Max Marks"+"</b>";
  cell2.innerHTML = "<b>"+"Average Marks"+"</b>";
  cell3.innerHTML = "<b>"+"Min Marks"+"</b>";
    cell4.innerHTML = "<b>"+"Your Marks"+"</b>";
  
    var col;
     
      var clo;
      var c=<%=i%>;
      
       <% for(int j=0;j<i;j++){%>
          
         
                  clo='<%=clos[j]%>';
               
           col = Hrow.insertCell(<%=j+4%>);
          col.innerHTML="<b>"+clo+"</b>";;
 <%}%>
           
        var row = table.insertRow(-1);
  var Max = row.insertCell(0);
  var Avrage = row.insertCell(1);
  var Min = row.insertCell(2);
  var Marks=row.insertCell(3);
   Max.innerHTML=data[0];
   Avrage.innerHTML=data[1];
   Min.innerHTML=data[2];
   Marks.innerHTML=data[3];
  <% for(int k=0;k<i;k++){%>
                  clo='<%=cloP[k]%>';
               
           col = row.insertCell(<%=k+4%>);
           col.innerHTML='<%=cloP[k]+"%"%>';;
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

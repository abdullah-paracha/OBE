<%@page import="QOBE.getStudents"%>
<%@page import="QOBE.SSActivityMarks1"%>
<%@page import="QOBE.getActivities"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="ExportData.js"></script>
  <title>Activity Result</title>
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
</head>
<body>

<div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9"> 
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center" id="eval">
           <%double Marks;
           String[] cloP;
               String str=request.getParameter("activity");
          SSActivityMarks1 m=new  SSActivityMarks1();
          String[] clos=m.getCLOs(str);
       int i=clos.length;
       getStudents st=new getStudents();
       int NumSt=st.getNumberOfStudents();
       String[] students=st.getReg_No();
      
        
           %>
           <table class="table table-dark" id="tb">
   
  
</table>
  <script>
       var table = document.getElementById("tb");  
        var header=table.createTHead();
        var Hrow = header.insertRow(0); 
  var cell1 = Hrow.insertCell(0);
  var cell2 = Hrow.insertCell(1);
  var cell3 = Hrow.insertCell(2);
  cell1.innerHTML ="<b>"+"No. "+"</b>";
  cell2.innerHTML = "<b>"+"RegNo"+"</b>";
  cell3.innerHTML = "<b>"+"Marks"+"</b>";;
  
    var col;
     
      var clo;
      var c=<%=i%>;
      
       <% for(int j=0;j<i;j++){%>
          
         
                  clo='<%=clos[j]%>';
               
           col = Hrow.insertCell(<%=j+3%>);
          col.innerHTML="<b>"+clo+"</b>";;
 <%}%>
                      
 <% for(int j=0;j<NumSt;j++){ %>
           
        var row = table.insertRow(-1);
  var Num = row.insertCell(0);
  var Reg = row.insertCell(1);
  var Marks = row.insertCell(2);
  Num.innerHTML =<%=j+1 %>;
  Reg.innerHTML = '<%=students[j] %>';
  
       <%Marks=m.getMarks(students[j],str); %>;
 Marks.innerHTML = <%=Marks %>;
 <% cloP=m.getCloPercentage(students[j],str,clos,i); %>
  <% for(int k=0;k<i;k++){%>
          
         
                  clo='<%=cloP[k]%>';
               
           col = row.insertCell(<%=k+3%>);
           col.innerHTML='<%=cloP[k]+"%"%>';;
 <%}%>
   <%   } %>
       
       
      </script>
      <br>
       <br>
   <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb','ActivityResult')">Download</button>
 </div>  
      </div>
       
         </div>
    </div>
         </div>
         </div>

</body>
</html>

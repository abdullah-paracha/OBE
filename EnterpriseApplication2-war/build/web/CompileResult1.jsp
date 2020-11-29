<%-- 
    Document   : CompileResult1
    Created on : Jul 14, 2019, 10:30:10 AM
    Author     : maqee
--%>

<%@page import="QOBE.getStudents"%>
<%@page import="QOBE.CompileResult"%>
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
  <title>Results</title>
</head>
<body>
     <%CompileResult cr=new CompileResult();
        getStudents st=new getStudents();
        int numSt=st.getNumberOfStudents();
        String[] reg=new String[numSt];
         reg=st.getReg_No();
          double[] total= new double[numSt];
          String[] Grades=new String[numSt];
        for(int i=0;i<numSt;i++){
         total[i]= cr.getTotaEvaluation(reg[i]);
         // System.out.print(reg[i]);
        //System.out.print(total[i]);
        }
        int m=Integer.parseInt(request.getParameter("m"));
                 int p=Integer.parseInt(request.getParameter("p"));
                 int f=Integer.parseInt(request.getParameter("f"));
                 double m1=1.0*m;
                 double p1=1.0*p;
                 double f1=1.0*f;
                 Grades=cr.getGrades(m1, p1, f1,total);
         Grades=cr.getGrades(m1,p1,f1,total);
        %>
    <div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9"> 
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center" id="eval">
    <body>
        
     <table class="table table-dark" id="tb">
            <tr>
            <th>No.</th>
            <th>Registration Number</th>
                <th>Grade</th>
            <tr>
</table>
        <script>
             var table = document.getElementById("tb");  
              
             var row;
            <% for(int j=0;j<numSt;j++){ %>
                row=table.insertRow(-1);
                var cell1=row.insertCell(0);
                var cell2=row.insertCell(1);
                var cell3=row.insertCell(2);
                cell1.innerHTML='<%=Integer.toString(j+1) %>';
                cell2.innerHTML='<%=reg[j]%>';
                cell3.innerHTML='<%=Grades[j]%>';
                <%}%>
                    
                    </script>
                    <br>
                    <br>
                    <br>
                 <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb','Result')">Download</button>
        </div>  
      </div>
       
         </div>
    </div>
         </div>
         </div>
    </body>
</html>

<%@page import="QOBE.StudentCloEvalution"%>
<%@page import="QOBE.getStudents"%>
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
    width:83%;
    height:auto;
    margin-left:27%;
    margin-top:1%;
    border: 3px solid #3F729B
    }
    body
    {
        background-color: #212121
    }
  </style>
  <title>Student Marks</title>
</head>
<body>
     <% 
         StudentCloEvalution sp=new StudentCloEvalution();
         int[] clo=new int[4];
         CompileResult cr=new CompileResult();
        getStudents st=new getStudents();
        int numSt=st.getNumberOfStudents();
        String[] reg=new String[numSt];
         reg=st.getReg_No();
          double[] total= new double[numSt];
        for(int i=0;i<numSt;i++){
         total[i]= cr.getTotaEvaluation(reg[i]);
         // System.out.print(reg[i]);
        //System.out.print(total[i]);
        }
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
                <th>Marks Obtained</th>
                <th>CLO1</th>
                <th>CLO2</th>
                <th>CLO3</th>
                 <th>CLO4</th>
            <tr>
</table>
        <script>
             var table = document.getElementById("tb");  
              
             var row;
            <% for(int j=0;j<numSt;j++){ %>
            <% clo=sp.getStudentPerformance(reg[j],4); %>
                row=table.insertRow(-1);
                var cell1=row.insertCell(0);
                var cell2=row.insertCell(1);
                var cell3=row.insertCell(2);
                var cell4=row.insertCell(3);
                var cell5=row.insertCell(4);
                var cell6=row.insertCell(5);
                var cell7=row.insertCell(6);
                cell1.innerHTML='<%=Integer.toString(j+1) %>';
                cell2.innerHTML='<%=reg[j]%>';
                cell3.innerHTML='<%=total[j]%>';
                cell4.innerHTML='<%=clo[0]+"%" %>';
                cell5.innerHTML='<%=clo[1]+"%"%>';
                cell6.innerHTML='<%=clo[2]+"%"%>';
                cell7.innerHTML='<%=clo[3]+"%"%>';
                <%}%>
                    
                    </script>
                    <br>
                    <br>
                    <br>
                 <button type="button" class="btn btn-success" id="inverted" onclick="exportTableToExcel('tb','Student Marks')">Download</button>
        </div>  
      </div>
       
         </div>
    </div>
         </div>
         </div>
    </body>
</html>

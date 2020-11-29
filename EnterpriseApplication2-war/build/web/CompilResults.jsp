<%-- 
    Document   : CompilResults
    Author     : Abdullah
--%>

<%@page import="QOBE.getStudents"%>
<%@page import="QOBE.CompileResult"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
  <script src="CompileResult.js"></script>
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
  <title>Compile Results</title>
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
         Grades=cr.getGrades(90.0,5.0,50.0,total);
        for(int i=0;i<numSt;i++){
           // System.out.println(Grades[i]);
        }
        int[] data=new int[10];
       data=cr.getPlaotData(Grades);
          for(int i=0;i<10;i++){
             System.out.println(data[i]);
          }
        %>
    <div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9"> 
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center" id="eval">
              <script>
                   updateResults();
                    
             function replaceValues()
             {
                 var m=document.getElementById("ex1").value;
                  var p=document.getElementById("ex2").value;
                  var f=document.getElementById("ex3").value;
                 window.location.replace("http://localhost:8080/EnterpriseApplication2-war/CompilResults.jsp?m="+m+"&p="+p+"&f="+f);
   window.open("http://localhost:8080/EnterpriseApplication2-war/CompileResult1.jsp?m="+m+"&p="+p+"&f="+f,'_blank');
               updateResults();
             }
             function updateResults()
             {
              
                 <%int m=Integer.parseInt(request.getParameter("m"));
                 int p=Integer.parseInt(request.getParameter("p"));
                 int f=Integer.parseInt(request.getParameter("f"));
                 double m1=1.0*m;
                 double p1=1.0*p;
                 double f1=1.0*f;
                 Grades=cr.getGrades(m1, p1, f1,total);
                 data=cr.getPlaotData(Grades);
                 for(int i=0;i<10;i++)
                 System.out.println(data[i]);
                 %>
                         var data=new Array();
                       <%for(int i=0;i<7;i++){ %>
                                    data[<%=i %>]=<%=data[i]%>
                                    <%}%>
             DrawResults('eval',data); 
  window.open("http://localhost:8080/EnterpriseApplication2-war/CompileResult1.jsp?m="+m+"&p="+p+"&f="+f,'_blank');

             
             }
                  </script>
                   <br>
         
             <button type="button" class="btn btn-primary" id="plain" onclick="PlainUpdate()">Plain</button>
                  &nbsp &nbsp &nbsp
                  <button type="button" class="btn btn-success" id="inverted" onclick="InvertedUpdate()">Inverted</button>
                  &nbsp &nbsp &nbsp
                  <button type="button" class="btn btn-warning" id="polar" onclick="PolarUpdate()">Polar</button>
                   <br>
             <br>
              <br>
             <br>
                  <div class="form-group row">
  <div class="col-xs-2">
    <label for="ex1">Max Grade</label>
    <input class="form-control" id="ex1" type="text" >
  </div>                 
  <div class="col-xs-2">
    <label for="ex2">Garding Patch</label>
    <input class="form-control" id="ex2" type="text" >
  </div>
  <div class="col-xs-2">
    <label for="ex3">Passing Threshold</label>
    <input class="form-control" id="ex3" type="text" >
  </div>
</div>
             <br>
             <br>
             
 <button type="button" class="btn btn-primary"  onclick="replaceValues()">Compile</button>
                             </div>  
      </div>
       
         </div>
    </div>
         </div>
         </div>
    
  </body>
</html>


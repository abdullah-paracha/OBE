<%-- 
    Document   : CLOsection

--%>

<%@page import="QOBE.CloPerformanceEvaluate"%>
<%@page import="QOBE.getStudents"%>
<%@page import="QOBE.getCLOs"%>
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
        <title>CLOs Performance</title>
    </head>
    <body>
       <div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9"> 
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center" id="eval">
   
               </div>  
      </div>
       
         </div>
    </div>
         </div>
         </div>
      <% getCLOs c=new getCLOs(); 
         int num=c.getNumOfClo();
           
             getStudents s=new getStudents();
            int nS=s.getNumberOfStudents();
            String[] Reg_No=new String[nS];   
        Reg_No=s.getReg_No();
        
         int[][] Performances=new int[num][nS];
         CloPerformanceEvaluate cc=new CloPerformanceEvaluate();
         for(int i=0;i<num;i++){
         Performances[i]=cc.getPerformance(i,nS,Reg_No); 
         }
         
    /*    for(int r=0;r<num;r++){
             for(int col=0;col<nS;col++)
                System.out.println(Performances[r][col]);
} */
      %>
                 
                 
                 <script> 
                       var st=<%=nS%>;
                     var cl=<%=num%>;
                     var Pass=new Array();
                    var Fail=new Array();
                    var CLOs=new Array();
                    for(i=1;i<=cl;i++)
                        CLOs[i-1]="CLO"+i.toString();
                    
                     Evaluate(60);
                     
                     function callEvaluate(){
                          document.getElementById("thrshld");
  var t=thrshld.value;
  //document.write(t);
  Evaluate(t);
  
                     }
                    function Evaluate(threshold){ 
                       // document.write(threshold);
                    <% for(int i=0;i<num;i++){%>
                         Pass[<%=i%>]=0;
                           Fail[<%=i%>]=0;
                   <%for(int j=0;j<nS;j++){ %>
                        var num=<%=Performances[i][j]%>
                                 if(num >=threshold)
                                   Pass[<%=i%>]=Pass[<%=i%>]+1;  
                               else
                                Fail[<%=i%>]=Fail[<%=i%>]+1;
                             DrawGraph(); 
                                       
                                                                                      <%}
                             
                         }%> }
                      
                           
                         
                 function DrawGraph() {  
                     
var myChart = Highcharts.chart('eval', {
        chart: {
            type: 'column'
        },
        title: {
            text: 'CLOs Performance'
        },
        xAxis: {
            categories: CLOs
        },
        yAxis: {
            title: {
                text: 'Number Of Students'
            }
        },
        series: [{
                 
                color: '#64FE2E',
            name: 'Pass',
            data: Pass
        }, {
              
            color: '#8A0808',
            name: 'Fail',
            data: Fail
        }]
    });
};
</script>
 &nbsp &nbsp &nbsp <font color="white"> <b>Threshold Value:</b></font> &nbsp &nbsp &nbsp <input type="text" name="ThresholdValue" id="thrshld" value="60" /><br><br>
            &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp
             &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp
             &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp
<button type="button" class="btn btn-primary"  onclick="callEvaluate()">Evaluate</button>
    </body>
</html>

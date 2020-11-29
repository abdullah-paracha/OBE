<%-- 
    Document   : UserInfo
    Created on : Jul 13, 2019, 3:03:15 PM
    Author     : maqee
--%>

<%@page import="QOBE.UserInfo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
  <title>User Info</title>
</head>
<body>
    <div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9"> 
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center" id="eval">
        <h1>User Info</h1>
         <table class="table table-hover table-dark" id="tb">
             </table>
             <% 
                 String user=request.getParameter("user");
                 String[] Uinfo=new String[7];
                 UserInfo ui=new UserInfo();
             Uinfo=ui.getUserInfo(user);
             %>

        <script>
           var data=["Name","Registration No.","Department","Email","Phone","Semester","Session"];
           var table = document.getElementById("tb"); 
             var row;
             var col,col1;
             <% for(int i=0;i<7;i++){ %>
                 row=table.insertRow(-1);
                 col=row.insertCell(0);
                  col1=row.insertCell(1);
                 col.innerHTML="<b>"+data[<%=i%>]+"</b>";
             col1.innerHTML='<%=Uinfo[i]%>';
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

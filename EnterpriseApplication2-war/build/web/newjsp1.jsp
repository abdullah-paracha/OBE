<%-- 
    Document   : newjsp1
    Created on : Nov 29, 2018, 8:19:41 PM
    Author     : maqee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #b1bace;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
   .well {
margin-top: 150px;
  margin-bottom: 100px;
  margin-right: 250px;
  margin-left: 430px;
  border: 3px solid #3F729B;
  width: 400px;
  height: 400px;
   
}
body {
  background-color: #212121;
}
  </style>
</head>
<body>
    <div class="container-fluid">
  <div class="row content">
     <div class="col-sm-9">
      
      
      <div class="row">
        <div class="col-sm-12">
          <div class="well" align="center">
              <h1>Change Password</h1>
              <br>
               <br>
                <br>
              <input type="password" class="form-control" placeholder="Current Password" aria-label="Username" aria-describedby="basic-addon1">
 
             <br>
            <input type="password" class="form-control" placeholder="New Password" aria-label="Username" aria-describedby="basic-addon2">
 
           <br>
          <input type="password" class="form-control" placeholder="Confirm Password" aria-label="Username" aria-describedby="basic-addon3">
          <br>
          <br>
          <button type="button" class="btn btn-primary">Save</button>
        </div>  
      </div>
       
         </div>
    </div>
         </div>
         </div>
</body>

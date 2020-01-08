<%@page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Elimina Museo | Vamos al Museo</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">     
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
              
        <style>
            h1 {
		color: #3d4449;
		font-family: "Roboto Slab", serif;
		font-weight: 700;
		font-size: 3.5em;
                line-height: 1.3;
            }
        </style>        
        
    </head>
    
<body>
    <div class="container">
        <h1>Elimina Museo</h1>
    <br>
    <form action="eli_museo" name="eli_museo" method="get">
        
      <div class="form-group">
          <label for="cod">Codigo de museo</label>
        <input type="text" class="form-control" id="codigo" name="txt1" value="<% out.println(request.getParameter("x")); %>">
      </div>
      <button type="submit" name="btnconsultar" class="btn btn-danger">Eliminar museo</button>
      
    </form>      
  </div>
      
      <br>
      <div class="container">
      <a href="MantMuseos.jsp" class="btn btn-info" role="button">Volver</a>          
      </div>
 </body> 
</html>
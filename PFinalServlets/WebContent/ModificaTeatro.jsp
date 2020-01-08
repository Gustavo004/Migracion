<%@page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<%@page import="Negocio.Negocio"%>
<%@page import="Entidad.Destino"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifica Teatro | Vamos al Museo</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <%-- <link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> --%>
        
        <link rel="stylesheet" href="assets/css/main.css" />
        
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
        <h1>Modifica Teatro</h1>
    <br>
    <form action="mod_teatro" name="mod_teatro" method="get">
        <div class="container">  
            <div class="form-group">
                <label for="cod">Codigo de teatro</label>
                <input type="text" class="form-control" id="codigo" name="txt1" value="<% out.println(request.getParameter("a")); %>" readonly>
            </div>
            <div class="form-group">
                <label for="dis">Codigo de destino</label>
                
                <select id="txt2" name="txt2">
                <% ArrayList<Destino> lista2 = Negocio.ListadoDestino();
                for (Destino D :lista2) { %>  
                <option><%= D.getId_des()%></option> <% } %>
                </select>               
                
            </div>
            <button type="submit" name="btnconsultar" class="btn button">Modificar teatro</button>
        </div>
    </form>
      
      <div class="container">
      <a href="MantTeatros.jsp" class="btn btn-info" role="button">Volver</a>          
      </div>
 </body> 
</html>
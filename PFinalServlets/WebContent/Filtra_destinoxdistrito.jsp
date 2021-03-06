<%@page import="Negocio.Negocio"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entidad.Distrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Destinos por Distrito | Vamos al Museo</title>
        <meta charset="utf-8">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="assets/css/main.css" />

        <style>
        th,td {
        text-align: center;
        vertical-align: middle;
        }
        
        ::-webkit-input-placeholder {
        text-align: center;
        }

        :-moz-placeholder { /* Firefox 18- */
           text-align: center;  
        }

        ::-moz-placeholder {  /* Firefox 19+ */
           text-align: center;  
        }

        :-ms-input-placeholder {  
           text-align: center; 
        }
        </style>
        
    </head>

    <body class="is-preload">
        
        <% 
            if(request.getParameter("x")!=null){
        %>

			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="NewIndex.html" class="logo"><strong>Aperture</strong> Software</a>
									<ul class="icons">
										<li><a href="https://twitter.com/Aperture_Soft/" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="https://www.facebook.com/ApertureSoftware/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="https://www.instagram.com/ApertureSoftware/" class="icon fa-instagram"><span class="label">Instagram</span></a></li>										
                                                                                <li><a href="https://www.youtube.com/watch?v=N_N94VUvhK4" class="icon fa-youtube"><span class="label">Youtube</span></a></li>
                                                                                <li><a href="Login.jsp" class="icon fa-sign-out"><span class="label">Salir</span></a></li>
									</ul>
								</header>
                                                        
							<!-- Content -->
								<section>
									<header class="main">
                                                                            <h1><CENTER>Destinos por Distrito</CENTER></h1>
									</header>

                                                                        <div class="table-wrapper" style="margin:0.2cm 2cm 3cm 3cm;">
                                                                             <table class="alt">       
                                                                                        <thead>
                                                                                            <tr>
                                                                                                <th><center>Distrito</center></th>
                                                                                                <th><center>Nombre</center></th>
                                                                                                <th><center>Direccion</center></th>
                                                                                            </tr>
                                                                                        </thead>
                                                                        <%
                                                                            String cod=request.getParameter("x");
                                                                            Connection cnx=null;
                                                                            ResultSet rs=null;
                                                                            Statement sta=null;
                                                                            String cadena="jdbc:sqlserver://localhost:1433;" +
                                                                               "databaseName=Vamos_al_museo;user=sa; password=12345678;";
                                                                            try{
                                                                                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                                                                cnx=DriverManager.getConnection(cadena);
                                                                                sta=cnx.createStatement();
                                                                            }catch(java.lang.ClassNotFoundException e){out.println(e);}
                                                                            catch(SQLException e){out.println(e);};
                                                                            try{
                                                                                rs=sta.executeQuery("EXEC sp_destxdistrito '"+cod+"'");
                                                                                while(rs.next()){
                                                                         %>

                                                                         <tbody>
                                                                             <tr>
                                                                                 <td><% out.println(rs.getString(1)); %></td>
                                                                                 <td><% out.println(rs.getString(2)); %></td>
                                                                                 <td><% out.println(rs.getString(3)); %></td>
                                                                             </tr>
                                                                         <%}rs.close();sta.close();cnx.close();
                                                                 }catch(SQLException e){out.println(e);};
                                                                 }
                                                                 %>
                                                                             </tbody> 
                                                                            </table>
                                                                             
                                                                                   <div>
      <a href="ListDistritos.jsp" class="btn btn-info" role="button">Volver</a>          
      </div>                                                                             
                                                                             
                                                                             
                                                                        </div>                                                                           
                                                                             
								</section>
						</div>
                                                                             
					</div>                                                                              

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">
							<!-- Logo -->
                                                                <section>
									<div class="mini-posts">
										<article>
                                                                                    <a href="NewIndex.html" class="image"><img src="images/vam.png" alt="" /></a>											
										</article>
									</div>
								</section>
                                                    <!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="NewIndex.html">Inicio</a></li>
                                                                                <li><a href="AboutUs.html">Quiénes Somos</a></li>
                                                                                <li>
											<span class="opener">Mantenimiento</span>
											<ul>
												<li><a href="MantDestinos.jsp">Destinos</a></li>
                                                                                                <li><a href="MantMuseos.jsp">Museos</a></li>
                                                                                                <li><a href="MantTeatros.jsp">Teatros</a></li>
                                                                                                <li><a href="MantBibliotecas.jsp">Bibliotecas</a></li>
											</ul>
										</li>
                                                                                <li>
											<span class="opener">Listado</span>
											<ul>
												<li><a href="ListDistritos.jsp">Distritos</a></li>
                                                                                                <li><a href="ListUsuarios.jsp">Usuarios</a></li>
											</ul>
										</li>
									</ul>
								</nav>

							<!-- Section -->
								<section>
									<header class="major">
										<h2>Contáctanos</h2>
									</header>
									<p>Valoramos tu opinión. Selecciona una de las opciones entre nuestros canales de atención.</p>
									<ul class="contact">
										<li class="fa-envelope-o"><a href="#">contacto@aperturesoft.com</a></li>
										<li class="fa-phone">(000) 555-0123</li>
										<li class="fa-home">Av. Javier Prado Este, San Isidro<br />
										Lima, TN 00000-0000</li>
									</ul>
								</section>

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Vamos al Museo. Todos los derechos reservados. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div> 
                                
                                
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>                                                     
                                                                             

</body>
</html>
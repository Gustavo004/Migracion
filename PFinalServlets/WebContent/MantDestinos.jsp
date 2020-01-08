<%@page import="Negocio.Negocio"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entidad.Destino"%>
<%@page import="Entidad.Distrito"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.net.*,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mant. Destinos | Vamos al Museo</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" /> 

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
                
                <!-- Wrapper -->
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
                                                                            <h1><CENTER>Mantenimiento de Destinos</CENTER></h1>
                                                                            <h2 ALIGN=RIGHT><a href="#fin" class="icon fa-level-down"><span class="label">Bajar</span></a></h2>
									</header>
                                                                    
                                                                    
                                                                    <div class="table-wrapper" style="margin:0.2cm 0.5cm 1cm 0.5cm;">        
                                                                        <table class="alt">      
                                                                                   <thead>
                                                                                       <tr>
                                                                                           <th style="width:10%"><center>Codigo Destino</center></th>
                                                                                           <th style="width:10%"><center>Codigo Distrito</center></th>
                                                                                           <th><center>Nombre</center></th>
                                                                                           <th><center>Direccion</center></th>
                                                                                           <th style="width:20%"><center>Descripcion</center></th>
                                                                                           <th><center>Imagen</center></th>
                                                                                           <th colspan="2"><center>Accion</center></th>
                                                                                       </tr>
                                                                                   </thead>

                                                                   <%
                                                                                               ArrayList<Destino> lista = Negocio.ListadoDestino();
                                                                                               ArrayList<Distrito> lista2 = Negocio.ListadoDistrito();
                                                                                                    for (Destino D :lista) {
                                                                        %>     
                                                                        <tbody>
                                                                            <tr>
                                                                                <td><%= D.getId_des() %></td>
                                                                                <td><%= D.getCod_dist() %></td>
                                                                                <td><%= D.getNomb_des() %></td>
                                                                                <td><%= D.getDir_des() %></td>
                                                                                <td><%= D.getDescrip_des() %></td>
                                                                                <td><img src="images/<%= D.getImgRuta_des() %>.jpg" width="100%" height="100%"></td>
                                                                                <td align="center"><center><a href='EliminaDest.jsp?x=<%=D.getId_des() %>' <button type="submit" class="btn btn-danger">Eliminar</button></a></center></td>
                                                                                <td align="center"><center><a href='ModificaDest.jsp?a=<%=D.getId_des() %>&b=<%=D.getCod_dist() %>&c=<%=D.getNomb_des() %>&d=<%=D.getDir_des() %>&e=<%=D.getDescrip_des() %>' <button type="submit" class="btn btn-warning">Modificar</button></a></center></td>
                                                                         </tr>      
                                                                        <%
                                                                       }

                                                                       %>

                                                                           <tr>
                                                                               <td id="fin"><center><div class="form-group"> <input type="text" class="form-control" id="id" name="id" placeholder="DES####" value="" form="my_form" > </div></center></td>
                                                                               <td><center><div class="form-group"> <select id="cod" name="co" form="my_form" >
                                                                                                                    <% for (Distrito Dis :lista2) { %>  <option><%= Dis.getCod_dist()%></option>  <% } %>
                                                                                                                    </select> </div></center></td>
                                                                               <td><center><div class="form-group"> <input type="text" class="form-control" id="nom" name="no" placeholder="Nombre" value="" form="my_form" > </div></center></td>
                                                                               <td><center><div class="form-group"> <input type="text" class="form-control" id="dir" name="di" placeholder="Direccion" value="" form="my_form" > </div></center></td>
                                                                               <td><center><div class="form-group"> <input type="text" class="form-control" id="des" name="de" placeholder="Descripcion" value="" form="my_form" > </div></center></td>
                                                                               <td colspan="3"><center><button type="submit" class="btn button" form="my_form">Adicionar</button></center></td>
                                                                           </tr>
                                                                        </tbody>  
                                                                       </table>
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
                        </div>                                
                                
                                <form action="ins_dest"  name="ins_dest" method="GET" id="my_form"> </form>    

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>                                 
                                
        </body>
</html>
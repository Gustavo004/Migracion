<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Login | Vamos al Museo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
        
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
        
        <link rel="stylesheet" href="css/style.css">
    </head>
    
    <body>
        
      <%
          if(request.getParameter("btn_ingresar") != null){
              String usuario = request.getParameter("user");
              String password = request.getParameter("pass");
              
              if(usuario.equals("admin") && password.equals("admin")){
                  response.sendRedirect("NewIndex.html");
              }else
              {
                  out.println("<script>alert('Usuario y/o contrasena incorrecta');</script>");
              }
          }
          
        %>        
        
        
        
        <form action="Login.jsp" method="POST">
            <div class="cont">
                <div class="demo">
                    <div class="login">
                        <div class="login__check"></div>
                        <div class="login__form">
                            <div class="login__row">
                                <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
                                <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8"></path>
                                </svg>
                                <input type="text" class="login__input name" name="user" placeholder="Usuario" required>
                            </div>
                            <div class="login__row">
                                <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
                                <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0"></path>
                                </svg>
                                <input type="password" class="login__input pass" name="pass"  placeholder="Contraseña" required>
                            </div>
                            <button type="submit" class="login__submit" name="btn_ingresar">Ingresar</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        
        
    </body>
</html>
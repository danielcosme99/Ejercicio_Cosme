<%-- 
    Document   : login
    Created on : 22 dic. 2021, 20:16:36
    Author     : Alfonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="https://fonts.googleapis.com/css2?family=Krub:wght@400;700&display=swap" rel="stylesheet">
  
    <link rel="stylesheet" href="css/login2.css">

    </head>
    
    <body>
      <%
            String msg = (String) request.getAttribute("mensaje");
        %>
    <main class="contenedor sombra">
    
        <h1>Inicia sesión</h1>
        <form action="log" method="post">
        <div class="display">
        <p>Usuario</p>
        <input class="campo_text" type="text" name="txtusuario" placeholder="Tu usuario" required="true"><br> 
         </div>
         <div class="display">
        <p>Contraseña</p>
        <input class="campo_text" type="password" name="txtcontra" placeholder="Tu contraseña" required="true"><br>
        </div>
          <p class="mensajito"><%=msg!=null? msg:""%></p>
        <div class="btn-flex">
        <input class="boton" type="submit" value="Ingresar">
        </div>
        
        
    </form>
    <p class="parrafo-registrate">¿No tienes una cuenta?<a href="registrarse.jsp" > Registrate</a></p>

</main>
    </body>
</html>

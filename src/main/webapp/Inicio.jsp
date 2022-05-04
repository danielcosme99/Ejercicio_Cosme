<%-- 
    Document   : Inicio
    Created on : 22 nov. 2021, 12:42:02
    Author     : Alfonso
--%>

<%@page import="modelo.bean.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda Ahorromax</title>
        
     
    <link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300&family=Staatliches&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/stylesInicio2.css">
   <link rel="stylesheet" href="css/normalize.css">
   
    </head>
    <body>
        
        <% 
            Usuario xusuario = (Usuario)request.getSession().getAttribute("xusuario");
        %>
        
       
        <header class="header">
            <div style="position: relative;width: 90%">
                <div style="">
            <a href="listaArticulo">
                <img class="header__logo" src="img/logo3.png" alt="Logotipo" style="margin-left: 36%">
            </a></div>
            <div style="position: absolute; top: 0; right: 0; margin-top: 30px; width: 150px">
                <a href="cerrarSesion" style="text-decoration: none"><h2 style="color: white; font-family: 'Roboto', sans-serif;font-size: 20px"><%=xusuario.getNombre()%></h2>
                    <div style="position: absolute; margin-top: 7px; color: white; font-family: 'Roboto', sans-serif;font-size: 20px">| Cerrar sesión |</div>
                    <div style="margin-left: 95%;margin-top: 3%">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-brand-gravatar" width="35" height="35" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                    <path d="M5.64 5.632a9 9 0 1 0 6.36 -2.632v7.714" />
                    </svg>  </div></a>
            </div>
            </div>
            
            
            
        </header>
           
   
   <nav class="navegacion">
    <a class="navegacion__enlace navegacion__enlace--activo" href="Inicio.jsp">Inicio</a>
    <a class="navegacion__enlace " href="listaArticulo">Tienda</a>
    <a class="navegacion__enlace" href="nosotros">Nosotros</a>
</nav>
    
   

    <section class="hero">
        <div class="contenido-hero">
        <h2></h2>
       
        
        <p>
            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-map-pin" width="88" height="88" viewBox="0 0 24 24" stroke-width="1.5" stroke="#FFC107" fill="none" stroke-linecap="round" stroke-linejoin="round">
                <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                <circle cx="12" cy="11" r="3" />
                <path d="M17.657 16.657l-4.243 4.243a2 2 0 0 1 -2.827 0l-4.244 -4.243a8 8 0 1 1 11.314 0z" />
              </svg>
            Perú, Lima</p>

        
        <!--<a class="boton" href="#">Contactar</a>-->
    </div>  
    </section>
    

    <main class="contenedor sombra">
        <h2>Nuestros servicios</h2>
        <div class="servicios">
        <section class="servicio">
            <h3 >Abarrotes</h3>
            <div class="iconos">
                <img src="img/abarrote.png" class="rounded-circle" >
                </div>
            
            <p style="text-align: justify">Ofrecemos gran variedad de productos de abarrotes con la mejor calidad y los mejores precios.<br>Satisfacción y calidad en el mismo lugar.</p>
            
        </section>
    
    <section class="servicio">
        <h3 >Moda</h3>
        
       <div class="iconos">
            <img src="img/moda.png" class="rounded-circle" >
            </div>
        <p style="text-align: justify">Ofrecemos lo mejor en calidad y lo ultimo en moda masculina y femenina para que le digas adios  al "no tengo que ponerme".<br>El estilo no tiene reglas, lo creas tú.
        </p>
        
    </section>
    
    <section class="servicio">
        <h3 >Snacks y Bebidas</h3>
        <div class="iconos">
            <img src="img/snack2.png" class="rounded-circle" >
            </div>
        <p style="text-align: justify">Tenemos gran variedad de snacks y bebidas  de calidad y originalidad porque sabemos lo que te gusta. Tenemos los sabores que te haran sentir bien.<br>Dale sabor a tus ratos libres</p>
        
    </section>
    
</div>
   
   
    
    <section>
        <h2>Contacto</h2>
        <form class="formulario" action="https://formsubmit.co/1923010051@untels.edu.pe" method="POST">
            <fieldset>
                <legend>Contactanos llenando todos los campos</legend>

                <div class="contenedor-campos">
                <div class="campo">
                    <label>Nombre</label>
                <input id="nombre" class="input-text" name="Nombre" type="text" placeholder="Tu Nombre">
                </div>
                
                <div class="campo">
                    <label>Telefono</label>
                <input id="telefono" class="input-text" name="Telefono" type="tel" placeholder="Tu Teléfono">
                </div>

                <div class="campo">
                    <label>Correo</label>
                <input id="correo" class="input-text" name="Correo electrónico" type="email" placeholder="Tu email">
                </div>

                <div class="campo">
                    <label>Mensaje</label>
                <textarea id="mensaje" name="Mensaje" class="input-text"></textarea>
                </div>
            </div>
               
            
            <div class="alinear-derecha flex">
                    <input id="enviarCorreo" class="boton w-100" type="submit" value="Enviar">
                </div>
            
            </fieldset>
        </form>
    </section>
</main>
    <footer class="footer">
        <p>Todos los derechos reservados - 2021</p>
    </footer>
      <script>
        const btnEnvio = document.getElementById("enviarCorreo");
        
        btnEnvio.addEventListener("click",function(e){
            e.preventDefault();
            //console.log("goaasd");
            const nombre = document.getElementById("nombre").value;
            const telefono = document.getElementById("telefono").value;
            const correo=document.getElementById("correo").value;
            const mensaje = document.getElementById("mensaje").value;
            
            window.location.href=`mailto:1923010051@untels.edu.pe?subject=Contactanos&body=Nombre%3AJoel Edwin%0ATelefono%3A922833744%0ACorreo%3Ajoel23alanya@gmail.com%0AMensaje%3AReclamos y Quejas`;
        
        })
        
        
        </script>
     
    </body>
</html>

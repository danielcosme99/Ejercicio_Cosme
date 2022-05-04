<%-- 
    Document   : modificarProducto
    Created on : 23 nov. 2021, 17:52:26
    Author     : Alfonso
--%>

<%@page import="modelo.bean.Carrito"%>
<%@page import="modelo.bean.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda Ahorromax</title>
        
        <link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">
        
       <link rel="stylesheet" href="css/styles2.css">
        
    </head>
    <body>
       <body>
    
    <% 
        Carrito car = (Carrito)request.getAttribute("prod");
        %>
   
    <header class="header">
        <a href="listaArticulo">
            <img class="header__logo" src="img/logo3.png" alt="Logotipo">
        </a>
    </header>

<nav class="navegacion">
    <a class="navegacion__enlace" href="Inicio.jsp">Inicio</a>
    <a class="navegacion__enlace" href="listaArticulo">Tienda</a>
    <a class="navegacion__enlace" href="nosotros">Nosotros</a>
</nav>

<main class="contenedor">
    
    <h1><%=car.getNombreProducto() %></h1>
    <div class="camisa">
        <img src="<%=car.getImagen()%>" alt="imagen del producto" class="camisa__imagen">
        <div class="camisa__contenido">
            
        
        <form action="modificarCarrito" method="post" class="formulario">
           
            
            <input class="formulario__campo" type="number" required="true" placeholder="cantidad" min="1" max="20" name="txtcantidad">
            <h2>Precio:&nbsp&nbsp&nbspS/<%=car.getPrecio()%></h2>
            <input class="formulario__submit" type="submit" value="Editar producto"></a>
            
            <input type ="text" hidden name="txtidCarrito" value="<%=car.getIdcarrito()%>">
            <input type ="text" hidden name="txtPrecio" value="<%=car.getPrecio()%>">
            
        </form> 
        </div>
    </div>
        
        <a href="listaCarrito">carrito</a>
</main>
    
<footer class="footer">
    <p class="footer__texto">Front End Store - Todos los derechos reservados 2021.</p>
</footer>


</body>
    </body>
</html>

<%-- 
    Document   : productos
    Created on : 19/11/2021, 08:42:56 PM
    Author     : Lenovo
--%>

<%@page import="modelo.bean.Producto"%>
<%@page import="modelo.bean.Carrito"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.bean.Articulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda Ahorromax</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles2.css">
      <% 
        Producto prod = (Producto)request.getAttribute("prod");
       int comparacion = (int)request.getAttribute("comparacion"); 
      %>
        <script>
           function confirmar(){
               
               let numero = document.getElementById("campoNumero").value;
               
        if(numero>0 && numero<=20){
        
        if(<%=comparacion%>===1){
                alert("No se pudo agregar el producto, porque ya está agregado en el carrito.");  
                
       
            }
            
            else{
                     alert("Producto agregado con éxito al carrito."); 
            } 
          }
           }
    
  
        </script>
</head>
<body>
    
  
   
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
    <!--<input type="text" value="">-->
    <h1><%=prod.getNombre()%></h1>
    <div class="camisa">
        <img src="<%=prod.getImagen()%>" alt="imagen del producto" class="camisa__imagen">
        <div class="camisa__contenido">
            <p><%=prod.getDescripcion()%></p>
        
            
        <form action="insertarCarrito" method="post" class="formulario">
           
            
            <input class="formulario__campo" id="campoNumero" type="number" required="true" placeholder="cantidad" min="1" max="20" name="txtcantidad">
            <h2>Precio:&nbsp&nbsp&nbspS/<%=prod.getPrecio()%></h2>
            <input class="formulario__submit" type="submit" value="Agregar al carrito"
                   onclick="return confirmar()"
                   ></a>
            
            
            <input type="type" name="txtidarticulo" hidden="" value="<%=prod.getIdproducto()%>">
            <input type="type" name="txtnombre" hidden="" value="<%=prod.getNombre()%>">
            <input type="type" name="txtdesc" hidden="" value="<%=prod.getDescripcion()%>">
            <input type="type" name="txtprec" hidden="" value="<%=prod.getPrecio()%>">
            <input type="type" name="txtimg" hidden="" value="<%=prod.getImagen()%>">
            
        </form> 
        </div>
    </div>
        
        <a href="listaCarrito">carrito</a>
</main>
    
<footer class="footer">
    <p class="footer__texto">Front End Store - Todos los derechos reservados 2021.</p>
</footer>


</body>
</html>

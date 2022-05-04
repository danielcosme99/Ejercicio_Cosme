<%-- 
    Document   : principal
    Created on : 21/11/2021, 12:58:54 PM
    Author     : Lenovo
--%>

<%@page import="modelo.bean.Producto"%>
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
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
   
        <link rel="stylesheet" href="css/styles2.css">
    </head>
    <body>
        <%
           ArrayList<Producto> articulos = (ArrayList<Producto>)request.getAttribute("articulos");
        %>
        
    <header class="header">
        <a href="listaArticulo">
            <img class="header__logo" src="img/logo3.png" alt="Logotipo">
        </a>
      
    </header>

<nav class="navegacion">
    <a class="navegacion__enlace" href="Inicio.jsp">Inicio</a>
    <a class="navegacion__enlace navegacion__enlace--activo" href="listaArticulo">Tienda</a>
    <a class="navegacion__enlace" href="nosotros">Nosotros</a>
    <!-- comment  <a class="navegacion__enlace" ><select>
            <option><a href="nosotros.jsp">Seleccione categoria</a></option>
            <option><a href="nosotros">Polos</a></option>
            <option href="nosotros.jsp">Pantalones</option>
            <option href="nosotros.jsp">Zapatos</option>
        </select></a>-->

</nav>
        
        

<main class="contenedor">
    <a class="enlacecarritoCompras" href="listaCarrito"><svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-shopping-cart" width="48" height="48" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
  <circle cx="6" cy="19" r="2" />
  <circle cx="17" cy="19" r="2" />
  <path d="M17 17h-11v-14h-2" />
  <path d="M6 5l14 1l-1 7h-13" />
</svg>Carrito de compras</a>
   
    <h1>Nuestros productos</h1> 
    
     <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
    Seleccione una categoría
  </button>
         <ul class="dropdown-menu dropdown-menu-dark"  aria-labelledby="dropdownMenuButton2">
    <li><a class="dropdown-item" href="listaArticulo">Conservas y Embutidos</a></li>
    <li><a class="dropdown-item" href="listaPan">Panaderia y Pastelería</a></li>
    <li><a class="dropdown-item" href="listaBebidas">Bebidas y Jugos</a></li>
    <li><a class="dropdown-item" href="listaVino">Cervezas y Vinos</a></li>
    <li><a class="dropdown-item" href="listaPiqueos">Golosina y Snacks</a></li>
    <li><a class="dropdown-item" href="listaFruta">Frutas y Verduras</a></li>
    <li><a class="dropdown-item" href="listaLacteos">Productos Lácteos</a></li>
    <li><a class="dropdown-item" href="listaLimpieza">Articulos de Limpieza</a></li>
    <li><a class="dropdown-item" href="listaRopa">Ropa y Accesorios</a></li>
  
  </ul>
</div>
    <br><!-- comment -->
    
    <div class="grid">
        <% for(Producto x:articulos){%>
            <div class="producto">
                <a href="editarProducto?id=<%=x.getIdproducto() %>">
                    <img class="producto__imagen" src=<%=x.getImagen()%> >
                    <div class="producto__informacion">
                        <p class="producto__nombre"><%=x.getNombre() %></p>
                        <p class="producto__precio">S/<%=x.getPrecio()%></p>
                        
                    </div>
                </a>
            </div>
        <% }%>
         <!--PRODUCTO-->

       <!--PRODUCTO-->
       <!-- <div class="grafico grafico--camisas"></div> -->
       <!-- <div class="grafico grafico--node"></div>-->
    </div>
            
</main>

<footer class="footer">
    <p class="footer__texto">Todos los derechos reservados 2021.</p>
</footer>


    </body>
</html>


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
      <link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">
        
        <title>Tienda Ahorromax</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="css/stylesCarrito3.css">
     <script>
  
    
    function confirmacion(){
       
        if(confirm("¿Está seguro que desea eliminar el artículo?")){
            return true;
        }else{
            return false;
        }
        
    }
    
   </script>
    </head>
    <body>
        <%
           ArrayList<Carrito> carritos = (ArrayList<Carrito>)request.getAttribute("carritos");
           float montoTotal= (float)request.getAttribute("montoTotal");
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
      
      
     
    
        
         <table class="table">
          <thead>
            <tr>
                
              <th scope="col">Nombre</th>
              <th scope="col">Imagen</th>
              <th scope="col">Precio</th>
              <th scope="col">Cantidad</th>
              <th scope="col">Total</th>
            
             
            </tr>
          </thead>
          <tbody>
               
              <% for(Carrito x:carritos){%>
           
              <tr>
             
              <td><%=x.getNombreProducto() %></td>
              <td><img class="imgProducto" src="<%=x.getImagen()%>"></td>
              <td><%=x.getPrecio() %></td> 
              <td><%=x.getCantidad()%></td>
              <td><%=x.getMonto()%></td>
              
              
              
              <td><a href="ireditarCarrito?id=<%=x.getIdcarrito()%>"><svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-circle-plus" width="32" height="32" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
  <circle cx="12" cy="12" r="9" />
  <line x1="9" y1="12" x2="15" y2="12" />
  <line x1="12" y1="9" x2="12" y2="15" />
</svg>
</a></td>
              <td><a href="eliminarProducto?id=<%=x.getIdcarrito()%>" onclick="return confirmacion() "><svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-trash-off" width="32" height="32" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
  <line x1="3" y1="3" x2="21" y2="21" />
  <path d="M4 7h3m4 0h9" />
  <line x1="10" y1="11" x2="10" y2="17" />
  <line x1="14" y1="14" x2="14" y2="17" />
  <path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l.077 -.923" />
  <line x1="18.384" y1="14.373" x2="19" y2="7" />
  <path d="M9 5v-1a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3" />
</svg></a></td>
            </tr>
              
            <% }%>
            
          
           
          
          </tbody>
         </table><br>
          
  <div class="modal fade" id="dialogo1">
            <div class="modal-dialog">
              <div class="modal-content">
          
                <!-- cabecera del diálogo -->
                <div class="modal-header">
                  <h4 class="modal-title">Eliminado</h4>
                  <button type="button" class="close" data-dismiss="modal">X</button>
                </div>
          
                <!-- cuerpo del diálogo -->
                <div class="modal-body">
                  Producto eliminado con éxito.
                </div>
          
                <!-- pie del diálogo -->
               
          
              </div>
            </div>
          </div> 
         
 <div class="disp">
   <div>
 <div class="disp">
    <p class="lbltotal">Subtotal (S/): </p>
    <input class="inpvalor" type="text" readonly="true" value="<%=montoTotal%>">          
   </div>
   
   <div class="disp">
    <p class="lbltotal ">Descuentos (S/): </p>
    <input class="inpvalor inpjod" type="text" readonly="true" value="0.0">
   </div>
   
   <div class="disp">
   
    <p class="lblred lbltotal">Total pedido (S/): </p>
    <input class="inpvalor red" type="text" readonly="true" value="<%=montoTotal%>">
   </div>
</div>

<div class="btnpagar">
    <a href="formasPago" class="btn btn-primary">
   
    Pagar <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-receipt-2" width="32" height="32" viewBox="0 0 24 24" stroke-width="1.5" stroke="#ffffff" fill="none" stroke-linecap="round" stroke-linejoin="round">
  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
  <path d="M5 21v-16a2 2 0 0 1 2 -2h10a2 2 0 0 1 2 2v16l-3 -2l-2 2l-2 -2l-2 2l-2 -2l-3 2" />
  <path d="M14 8h-2.5a1.5 1.5 0 0 0 0 3h1a1.5 1.5 0 0 1 0 3h-2.5m2 0v1.5m0 -9v1.5" />
</svg>
    </a>
</div>
</div>
   
   
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>

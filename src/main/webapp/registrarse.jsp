<%-- 
    Document   : registrarse
    Created on : 22 dic. 2021, 21:41:54
    Author     : Alfonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda Ahorromax</title>
        <link href="https://fonts.googleapis.com/css2?family=Krub:wght@400;700&display=swap" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
    $(function(){
        $("#txtcontra").on("click",function(){
        var usu=$("#txtusuario").val();
        $.post("previousuario",{usuario:usu},function(data){
            $("#respuesta").html(data);
            });
        }); //fin envento click 
    });//fin funcion anonima
 </script>      
<script>
 function validaForm() {         
    var prevusu = $("#txtprevio").val();
    
    if ($("#txtusuario").val() == prevusu) {
       alert("El usuario ya existe, intente con otro.");
        $("#txtusuario").focus(); // Esta función coloca el //foco de escritura del usuario en el campo Nombre directamente.
        return false;
    } else{
       document.getElementById('frmx').submit();
    }
    return true; // Si todo está correcto
    }
</script>
        
        <link rel="stylesheet" href="css/registrate.css">
    </head>
    <div id="respuesta"></div>
  
    <body>
          <main class="contenedor sombra">
    <h1>Registrate</h1>


    <form id="frmx" action="registrarse" method="post">
        <div class="display">
            <p>Nombre</p>
            <input class="campo_text" type="text" name="txtnombre" id="txtnombre" placeholder="Nombre completo" required="true"><br> 
    </div>

    <div class="display">
        <p>Usuario</p>
        <input class="campo_text" type="text" name="txtusuario" id="txtusuario" placeholder="Tu usuario" required="true"><br> 
    
    </div>

    <div class="display">
        <p>Clave</p>
        <input class="campo_text" type="password" name="txtcontra" id="txtcontra" placeholder="Tu contraseña" required="true"><br>
    
    </div>

    <div class="display">
        <p>Email</p>
        <input  class="campo_text" type="email" name="txtemail" placeholder="Tu email" required="true"><br>
    
    </div>

   
    <div class="margin">
        <input type="checkbox">
        <label>Sí, deseo recibir ofertas de AhorroMax</label>
    </div>
    
       <input type="button" class="boton" value="Regístrate" onclick="validaForm()">
      
      
  </form>
</main>
    </body>
</html>

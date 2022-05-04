
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
</head>
<body>
    <header class="header">
        <a href="listaArticulo">
            <img class="header__logo" src="img/logo3.png" alt="Logotipo">
        </a>
    </header>

<nav class="navegacion">
    <a class="navegacion__enlace " href="Inicio.jsp">Inicio</a>
    <a class="navegacion__enlace " href="listaArticulo">Tienda</a>
    <a class="navegacion__enlace navegacion__enlace--activo" href="nosotros">Nosotros</a>

</nav>

<main class="contenedor">
    <h1>Nosotros</h1>
    <div class="nosotros">
        <div style="text-align: justify" class="nosotros__contenido">
            <p>
                Minimarket Ahorromax es un negocio dedicado a la venta de abarrotes, snacks y moda con varios años de operacion en el mercado.
            </p>
              <p>Tenemos el compromiso de ser tu mejor aliado en tus compras diarias, proporcionando una variedad de productos con la mejor variedad, calidad y con los mejores precios. 
            </p>
            <p>
                Actualmente nos ubicamos en San Juan de Lurigancho - Av. Santa Rosa y nos proyectamos a futuro a implementar más tiendas y estar más cerca de nuestros clientes.
            </p>
            <p>
                Nuestra mision es ser la tienda de confianza de nuestros consumidores y nuestra vision es ser el lider regional y el socio más innovador para el cliente.
            </p>
           
        </div>
        <div class="nosotros__imagen">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3902.813250027203!2d-76.99676759926274!3d-11.987420476850266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c5712263efa1%3A0x3ac8e745c7abc6af!2sJiron%20Maximo%20Velandro%20163%2C%20San%20Juan%20de%20Lurigancho%2015434!5e0!3m2!1ses!2spe!4v1638212213492!5m2!1ses!2spe" width="600" height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </div>
</main>

<section class="contenedor compra">
<h2 class="comprar__titulo">¿Porqué comprar con nosotros?</h2>
<div class="bloques">
    <div class="bloque">
        <img class="bloque__imagen" src="img/icono_1.png" alt="Por qué comprar">
        <h3 class="bloque__titulo">El mejor precio</h3>
        <p>Ofrecemos a nuestros clientes los mejores precios del mercado.</p>
    </div><!--Bloque-->
    <div class="bloque">
        <img class="bloque__imagen" src="img/icono_variedad.png" alt="Por qué comprar">
        <h3 class="bloque__titulo">Más variedad</h3>
        <p>Tenemos la mayor variedad en nuestros productos tanto en marcas como en precios.</p>
    </div><!--Bloque-->
    <div class="bloque">
        <img class="bloque__imagen" src="img/icono_3.png" alt="Por qué comprar">
        <h3 class="bloque__titulo">Envio gratis</h3>
        <p>Ofrecemos un servicio de envio gratuito con tus compras con nosotros.</p>
    </div><!--Bloque-->
    <div class="bloque">
        <img class="bloque__imagen" src="img/icono_4.png" alt="Por qué comprar">
        <h3 class="bloque__titulo">La mejor calidad</h3>
        <p>Tenemos productos de la mejor calidad garantizada. Porque nuestros clientes son la prioridad</p>
    </div><!--Bloque-->
</div><!--BloqueS-->
</section>

<footer class="footer">
    <p class="footer__texto">Todos los derechos reservados 2021.</p>
</footer>


</body>
</html>

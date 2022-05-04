<%-- 
    Document   : Pagar
    Created on : 27 dic. 2021, 11:57:40
    Author     : Alfonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda Ahorromax</title>
        <link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato|Liu+Jian+Mao+Cao&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/estilos.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css/pagar2.css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
       <header class="header">
        <a href="listaArticulo">
            <img class="header__logo" src="img/logo3.png" alt="Logotipo">
        </a>
        </header>
        
<nav class="navegacion">
    <a class="navegacion__enlace navegacion__enlace--activo" href="Inicio.jsp">Inicio</a>
    <a class="navegacion__enlace " href="listaArticulo">Tienda</a>
    <a class="navegacion__enlace" href="nosotros">Nosotros</a>
</nav>
        
    
           
        <div class="d-grid gap-2" id="accordionExample">
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingOne">
                  
                <button class="btn btn-lg  btnpago"  type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" >
                 PAGO CON TARJETA
                </button>
              </h2>
              
              <!-- Pago con Tarjeta -->
                          
              <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                      <div class="contenedor">
                    <h3 style="font-weight: 700; font-size: 20px" class="card-title">Datos de la Tarjeta (Visa o MasterCard)</h3>
                 
                    

                    <!-- Tarjeta -->
                    <section class="tarjeta" id="tarjeta">
                            <div class="delantera">
                                    <div class="logo-marca" id="logo-marca">
                                            <!-- <img src="img/logos/visa.png" alt=""> -->
                                    </div>
                                    <img src="img/chip-tarjeta.png" class="chip" alt="">
                                    <div class="datos">
                                            <div class="grupo" id="numero">
                                                    <p class="label">Número Tarjeta</p>
                                                    <p class="numero">#### #### #### ####</p>
                                            </div>
                                            <div class="flexbox">
                                                    <div class="grupo" id="nombre">
                                                            <p class="label">Nombre Tarjeta</p>
                                                            <p class="nombre">Usuario</p>
                                                    </div>

                                                    <div class="grupo" id="expiracion">
                                                            <p class="label">Expiracion</p>
                                                            <p class="expiracion"><span class="mes">MM</span> / <span class="year">AA</span></p>
                                                    </div>
                                            </div>
                                    </div>
                            </div>

                            <div class="trasera">
                                    <div class="barra-magnetica"></div>
                                    <div class="datos">
                                            <div class="grupo" id="firma">
                                                    <p class="label">Firma</p>
                                                    <div class="firma"><p></p></div>
                                            </div>
                                            <div class="grupo" id="ccv">
                                                    <p class="label">CCV</p>
                                                    <p class="ccv"></p>
                                            </div>
                                    </div>
                                    <p class="leyenda">Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus exercitationem, voluptates illo.</p>
                                    <a href="#" class="link-banco">www.tubanco.com</a>
                            </div>
                    </section>

		<!-- Contenedor Boton Abrir Formulario -->
		<div class="contenedor-btn">
			<button class="btn-abrir-formulario" id="btn-abrir-formulario">
				<i class="fas fa-plus"></i>
			</button>
		</div>

		<!-- Formulario -->
                    <form action="pagarCarrito" id="formulario-tarjeta" class="formulario-tarjeta">
			<div class="grupo">
				<label for="inputNumero">Número Tarjeta</label>
				<input type="text" id="inputNumero" maxlength="19" autocomplete="off">
			</div>
			<div class="grupo">
				<label for="inputNombre">Nombre</label>
				<input type="text" id="inputNombre" maxlength="19" autocomplete="off">
			</div>
			<div class="flexbox">
				<div class="grupo expira">
					<label for="selectMes">Expiracion</label>
					<div class="flexbox">
						<div class="grupo-select">
							<select name="mes" id="selectMes">
								<option disabled selected>Mes</option>
							</select>
							<i class="fas fa-angle-down"></i>
						</div>
						<div class="grupo-select">
							<select name="year" id="selectYear">
								<option disabled selected>Año</option>
							</select>
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
				</div>

				<div class="grupo ccv">
					<label for="inputCCV">CCV</label>
					<input type="text" id="inputCCV" maxlength="3">
				</div>
			</div>
                    
                        <input type="submit" class="btn-enviar" id="btnenviar"  value="Enviar" >
	
		</form>
	</div>
                    
	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<script src="js/pagoTarjeta.js"></script>
                    
                </div>
              </div>
            </div>
            
            <!--Pago ContraEntrega  -->
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingTwo">
                <button class="btn  btn-lg btnpago" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  PAGO CONTRA ENTREGA
                </button>
              </h2>
                
              <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                
                  <div class="accordion-body">
                    <div class="contenedor_entrega">
                        <br>
                    <h3 class="card-title" style="font-weight: 700; font-size: 25px">Datos del Comprador</h3><br>
                    
                    
                    <form action="pagarCarrito" class="row g-3 needs-validation" novalidate>
                    
                    <div class="col-md-6">
                      <label for="validationCustom03" class="form-label">Nombres y Apellidos</label>
                      <input type="text" class="form-control" id="validationCustom03" required>
                      <div class="invalid-feedback">
                        Please provide a valid city.
                      </div>
                    </div>
                      
                    <div class="col-md-3">
                      <label for="validationCustom04" class="form-label">Tipo de Documento</label>
                      <select class="form-select" id="validationCustom04" required>
                        <option selected disabled value="">--- ELEGIR ---</option>
                        <option>DNI</option>
                        <option>CARNET EXT.</option>
                        <option>PASAPORTE</option>
                        <option>OTROS</option>
                      </select>
                      <div class="invalid-feedback">
                        Please select a valid state.
                      </div>
                    </div>
                      
                    <div class="col-md-3">
                      <label for="validationCustom05" class="form-label">N° de Documento</label>
                      <input type="text" class="form-control" id="validationCustom05" required>
                      <div class="invalid-feedback">
                        Please provide a valid zip.
                      </div>
                    </div>
                    
                    <div class="col-md-4">
                      <label for="validationCustom01" class="form-label">Teléfono</label>
                      <input type="text" class="form-control" id="validationCustom01"  required>
                      <div class="valid-feedback">
                        Looks good!
                      </div>
                    </div>
                      
                    <div class="col-md-4">
                      <label for="validationCustom02" class="form-label">Monto al Pagar</label>
                      <div class="input-group has-validation">
                          <span class="input-group-text" id="inputGroupPrepend" style="font-size: 20px" >S/</span>
                      <input type="text" class="form-control" id="validationCustom02"  required>
                      <div class="valid-feedback">
                        Looks good!
                        </div>
                      </div>
                    </div>
                      
                    <div class="col-md-4">
                      <label for="validationCustomUsername" class="form-label">Correo Electrónico</label>
                      <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend" style="font-size: 20px">@</span>
                        <input type="text" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required>
                        <div class="invalid-feedback">
                          Please choose a username.
                        </div>
                      </div>
                    </div>
                      
                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                        <label class="form-check-label" for="invalidCheck">
                          Acepto Termínos y Condiciones
                        </label>
                        <div class="invalid-feedback">
                          You must agree before submitting.
                        </div>
                      </div>
                    </div>
                      
                    <div class="col-12">
                      <button class="btn-enviar btn_enviar2" id="btnenviar2" type="submit">Enviar</button>
                    </div>
                  </form>
                    </div>
                </div>
              </div>
            </div>
            
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingThree">
                <button class="btn btn-lg btnpago" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                  PAGO CON PAYPAL
                </button>
              </h2>
              <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <center>
                        <!-- Set up a container element for the button -->
                        <div id="paypal-button-container"></div>

                        <!-- Include the PayPal JavaScript SDK -->
                        <script src="https://www.paypal.com/sdk/js?client-id=test&currency=USD"></script>

                        <script>
                            // Render the PayPal button into #paypal-button-container
                            paypal.Buttons({
                                style: {
                                    layout: 'horizontal'
                                }
                            }).render('#paypal-button-container');
                        </script>
                    </center>
                  </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
      
          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        <script>
        btnenviar = document.getElementById("btnenviar");
       btnenviar.addEventListener("click",function(){
            alert("Pago realizado con éxito.");
     
    
    })
    </script>
     <script>
      
       btnenviar2 = document.getElementById("btnenviar2");
       btnenviar2.addEventListener("click",function(){
            alert("Pedido realizado.");
    
    })
    </script>
    </body>
</html>

<%-- 
    Document   : respuestaConfiguracion
    Created on : 23/04/2013, 12:11:55 AM
    Author     : jdiazr0901416
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>GeekOnn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="recursos/bootstrap/docs/assets/css/bootstrap.css" rel="stylesheet">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="recursos/css/configuracion.css" rel="stylesheet">
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome.min.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="recursos/bootstrap/docs/assets/js/html5shiv.js"></script>
    <![endif]-->
    <!--[if IE 7]>
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome-ie7.min.css">
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="recursos//bootstrap/docs/assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="recursos/bootstrap/docs/assets/ico/favicon.png">
     <script src="recursos/ajax/acciones/conf/ajaxConfiguracion.js"></script>
  </head>
  <body>
    <div class="container-fluid" id="contenedor-configuracion-usuario">
    <div class="row-fluid">
        <div class="span12">
        <div class="row-fluid">
            <center><h2>Configuración</h2></center>
            <hr>
        </div>
      <div class="row-fluid">
         <div class="span10 offset1 contenedor-configuracion">
             <div class="row-fluid">
         <div class="span10 offset1 contenedor-c">
            <div class="row-fluid">
                <div class="span12">
                    <div class="row-fluid">
                        <div class="row-fluid meta-black">
                            <div class="span12">
                                <p class="text-center"><b>Acerca de mi:</b></p>
                            </div>
                        </div>
                        <div class="row-fluid" id="yo">
                            <div class="span12">
                                <br>
                                <center><textarea rows="3" class="span10"></textarea></center>
                                <br>
                                <center><button type="button" class="btn btn-info"><i class="icon-refresh icon-white"></i>&nbsp;Actualizar</button></center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row-fluid top" >
                <div class="span6 top">
                    <div class="row-fluid">
                        <div class="row-fluid meta-black">
                            <div class="span12">
                                <p class="text-center"><b>Información Basica:</b></p>
                            </div>
                        </div>
                        <div class="row-fluid" id="informacion-basica">
                            <div class="span12">
                                <div class="row-fluid">
                                        <div class="span5">
                                            <p><b>Cumpleaños:</b></p>
                                        </div>
                                        <div class="span7">
                                            <div class="control-group" id="div-control-space">
                                                <div class="controls" style="margin-left:0;">
                                                  <div class="input-prepend">
                                                    <span class="add-on"><i class="icon-user-md"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                                  </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                                <div class="row-fluid">
                                        <div class="span5">
                                            <p><b>Sexo</b></p>
                                        </div>
                                        <div class="span7">
                                            <div class="control-group" id="div-control-space">
                                                <div class="controls" style="margin-left:0;">
                                                  <div class="input-prepend">
                                                    <span class="add-on"><i class="icon-user-md"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                                  </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                                <div class="row-fluid">
                                        <div class="span5">
                                            <p><b>Situación sentimental:</b></p>
                                        </div>
                                        <div class="span7">
                                            <div class="control-group" id="div-control-space">
                                                <div class="controls" style="margin-left:0;">
                                                  <div class="input-prepend">
                                                    <span class="add-on"><i class="icon-user-md"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                                  </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                                <center><button type="button" class="btn btn-info"><i class="icon-refresh icon-white"></i>&nbsp;Actualizar</button></center>
                            </div>
                        </div>
                    </div>
                
                <div class="row-fluid top">
                    <div class="row-fluid meta-black">
                        <div class="span12">
                            <p class="text-center"><b>Mi experiencia:</b></p>
                        </div>
                    </div>
                    <div class="row-fluid" id="experiencia">
                        <div class="row-fluid">
                            <div class="span12">
                                <div class="row-fluid">
                                    <div class="span5">
                                        <p><b>Maximo grado de estudios</b></p>
                                    </div>
                                    <div class="span7">
                                        <div class="control-group" id="div-control-space">
                                            <div class="controls" style="margin-left:0;">
                                              <div class="input-prepend">
                                                <span class="add-on"><i class="icon-trophy"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span5">
                                        <p><b>Escuela:</b></p>
                                    </div>
                                    <div class="span7">
                                        <div class="control-group" id="div-control-space">
                                            <div class="controls" style="margin-left:0;">
                                              <div class="input-prepend">
                                                <span class="add-on"><i class="icon-book"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span5">
                                        <p><b>Especialidad</b></p>
                                    </div>
                                    <div class="span7">
                                        <div class="control-group" id="div-control-space">
                                            <div class="controls" style="margin-left:0;">
                                              <div class="input-prepend">
                                                <span class="add-on"><i class="icon-user"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row-fluid">
                                    <div class="span5">
                                        <p><b>Profesión</b></p>
                                    </div>
                                    <div class="span7">
                                        <div class="control-group" id="div-control-space">
                                            <div class="controls" style="margin-left:0;">
                                              <div class="input-prepend">
                                                <span class="add-on"><i class="icon-user-md"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span5">
                                        <p><b>Puesto:</b></p>
                                    </div>
                                    <div class="span7">
                                        <div class="control-group" id="div-control-space">
                                            <div class="controls" style="margin-left:0;">
                                              <div class="input-prepend">
                                                <span class="add-on"><i class="icon-sitemap"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                              </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <center><button type="button" class="btn btn-info"><i class="icon-refresh icon-white"></i>&nbsp;Actualizar</button></center>
                        </div>  
                     </div>
                    </div>
                </div>
            <div class="span6 top">
                    <div class="row-fluid">
                        <div class="row-fluid meta-black">
                            <div class="span12">
                                <p class="text-center"><b>Contacto:</b></p>
                            </div>
                        </div>
                        <div class="row-fluid" id="contacto">
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="row-fluid">
                                        <div class="span5">
                                            <p><b>Correo Electronico:</b></p>
                                        </div>
                                        <div class="span7">
                                            <div class="control-group" id="div-control-space">
                                                <div class="controls" style="margin-left:0;">
                                                  <div class="input-prepend">
                                                    <span class="add-on"><i class="icon-envelope"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                                  </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <div class="span5">
                                            <p><b>Telefono movil:</b></p>
                                        </div>
                                        <div class="span7">
                                            <div class="control-group" id="div-control-space">
                                                <div class="controls" style="margin-left:0;">
                                                  <div class="input-prepend">
                                                    <span class="add-on"><i class="icon-tablet"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                                  </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <div class="span5">
                                            <p><b>Telefono de casa o trabajo:</b></p>
                                        </div>
                                        <div class="span7">
                                            <div class="control-group" id="div-control-space">
                                                <div class="controls" style="margin-left:0;">
                                                  <div class="input-prepend">
                                                    <span class="add-on"><i class="icon-book"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                                  </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <div class="span5">
                                            <p><b>Lugar de residencia:</b></p>
                                        </div>
                                        <div class="span7">
                                            <div class="control-group" id="div-control-space">
                                                <div class="controls" style="margin-left:0;">
                                                  <div class="input-prepend">
                                                    <span class="add-on"><i class="icon-home"></i></span><input class="span9" type="text" id="username" name="correoElectronico" tabindex="1" id="form-input-space">
                                                  </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <center><button type="button" class="btn btn-info"><i class="icon-refresh icon-white"></i>&nbsp;Actualizar</button></center>
                            </div>    
                        </div>
                    </div>
                    <div class="row-fluid top">
                            <div class="row-fluid meta-black">
                                <div class="span12">
                                    <p class="text-center"><b>Manera de ser y de pensar:</b></p>
                                </div>
                            </div>
                            <div class="row-fluid" id="filosofia">
                                <div class="span12">
                                    <br>
                                    <center><textarea rows="3" class="span10"></textarea></center>
                                    <br>
                                    <center><button type="button" class="btn btn-info"><i class="icon-refresh icon-white"></i>&nbsp;Actualizar</button></center>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
                 </div>
         </div>
        </div>
         </div>
        </div>
    </div>
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="recursos/bootstrap/docs/assets/js/jquery.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-transition.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-alert.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-modal.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-dropdown.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-scrollspy.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-tab.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-tooltip.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-popover.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-button.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-collapse.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-carousel.js"></script>
    <script src="recursos/bootstrap/docs/assets/js/bootstrap-typeahead.js"></script>
    <script src="recursos/ajax/ajax.js"></script>
    
  </body>
</html>
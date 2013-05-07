<%-- 
    Document   : perfilV2
    Created on : 03-may-2013, 19:00:51
    Author     : Julio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>GeekOnn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <!-- Le styles -->
    <link href="recursos/bootstrap/docs/assets/css/bootstrap.css" rel="stylesheet">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="recursos/css/perfil.css" rel="stylesheet">
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome.min.css">
    <script src="recursos/ajax/acciones/perfil/ajaxPerfil.js"></script>

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
  </head>
    <body>
            <div class="row-fluid">
                    <div class="row-fluid">
                        <div class="span10 offset1" id="contenedor-perfil"> 
                            <div class="row-fluid meta-black-T">
                                <div class="span12">
                                    <div class="row-fluid border-bottom">
                                    <center><h3><%=(String)session.getAttribute("sessionNombre")%></h3></center>
                                    </div>
                                    <div class="row-fluid menu-perfil-2">
                                        <div class="span2 offset2 menu-p" id="informacion-perfil" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="prueba prueba">
                                            <center><h4><i class="icon-user icon-white"></i>&nbsp;Acerca de mi</h4></center>
                                        </div>
                                        <div class="span2 menu-p" id="amigos-perfil">
                                            <center><h4><i class="icon-group icon-white"></i>&nbsp;Mis Amigos</h4></center>
                                        </div>
                                        <div class="span2 menu-p" id="ultimas-opiniones-perfil">
                                            <center><h4><i class="icon-comments icon-white"></i>&nbsp;Mis ultimas publicaciones</h4></center>
                                        </div>
                                        <div class="span2 menu-p" id="favoritos-perfil">
                                            <center><h4><i class=" icon-star"></i>&nbsp;Mis Favoritos</h4></center>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row-fluid" id="contenedor">
                                <div class="span10 offset1" id="respuestaPerfil">
                                    <div class="row-fluid">
                                        <div class="span3 top" id="foto-perfil">
                                            <img alt='' src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png"  class="img-rounded span12 foto-perfil-2">
                                        </div>
                                        <div class="span9 top" id="biografia-perfil">
                                            <div class="hero-unit biografia-perfil">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row-fluid">
                                        <div class="span12" id="separador">
                                            <div class="row-fluid">
                                                <div class="span12">
                                                    <div class="row-fluid">
                                                        <div class="row-fluid meta-black">
                                                            <div class="span12">
                                                                <p class="text-center"><b>Acerca de mi:</b></p>
                                                            </div>
                                                        </div>
                                                        <div class="row-fluid" id="yo">
                                                            <div class="span10 offset1">
                                                                <br>
                                                                <center><p align="justify"><strong>bla bla bla de mi</strong></p></center>
                                                                <br>
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
                                                                            <p><strong> bla bla bla</strong></p>
                                                                        </div>
                                                                </div>
                                                                <div class="row-fluid">
                                                                        <div class="span5">
                                                                            <p><b>Sexo</b></p>
                                                                        </div>
                                                                        <div class="span7">
                                                                            <p><strong> bla bla bla</strong></p>
                                                                        </div>
                                                                </div>
                                                                <div class="row-fluid">
                                                                        <div class="span5">
                                                                            <p><b>Situación sentimental:</b></p>
                                                                        </div>
                                                                        <div class="span7">
                                                                            <p><strong> bla bla bla</strong></p>
                                                                        </div>
                                                                </div>
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
                                                                       <p><strong> bla bla bla</strong></p>
                                                                    </div>
                                                                </div>
                                                                <div class="row-fluid">
                                                                    <div class="span5">
                                                                        <p><b>Escuela:</b></p>
                                                                    </div>
                                                                    <div class="span7">
                                                                       <p><strong> bla bla bla</strong></p>
                                                                    </div>
                                                                </div>
                                                                <div class="row-fluid">
                                                                    <div class="span5">
                                                                        <p><b>Especialidad</b></p>
                                                                    </div>
                                                                    <div class="span7">
                                                                       <p><strong> bla bla bla</strong></p>
                                                                    </div>
                                                                </div>

                                                                <div class="row-fluid">
                                                                    <div class="span5">
                                                                        <p><b>Profesión</b></p>
                                                                    </div>
                                                                    <div class="span7">
                                                                       <p><strong> bla bla bla</strong></p>
                                                                    </div>
                                                                </div>
                                                                <div class="row-fluid">
                                                                    <div class="span5">
                                                                        <p><b>Puesto:</b></p>
                                                                    </div>
                                                                    <div class="span7">
                                                                       <p><strong> bla bla bla</strong></p>
                                                                    </div>
                                                                </div>
                                                            </div>
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
                                                                       <p><strong> bla bla bla</strong></p>
                                                                    </div>
                                                                    </div>
                                                                    <div class="row-fluid">
                                                                        <div class="span5">
                                                                            <p><b>Telefono movil:</b></p>
                                                                        </div>
                                                                        <div class="span7">
                                                                       <p><strong> bla bla bla</strong></p>
                                                                    </div>
                                                                    </div>
                                                                    <div class="row-fluid">
                                                                        <div class="span5">
                                                                            <p><b>Telefono de casa o trabajo:</b></p>
                                                                        </div>
                                                                        <div class="span7">
                                                                       <p><strong> bla bla bla</strong></p>
                                                                    </div>
                                                                    </div>
                                                                    <div class="row-fluid">
                                                                        <div class="span5">
                                                                            <p><b>Lugar de residencia:</b></p>
                                                                        </div>
                                                                        <div class="span7">
                                                                       <p><strong> bla bla bla</strong></p>
                                                                    </div>
                                                                    </div>
                                                                </div>
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
                                                                <div class="span10 offset1">
                                                                    <br>
                                                                    <center><p align="justify"><strong>bla bla bla de mi</strong></p></center>
                                                                    <br>
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
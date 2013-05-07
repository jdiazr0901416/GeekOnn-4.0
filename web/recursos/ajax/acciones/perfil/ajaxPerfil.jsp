<%-- 
    Document   : ajaxPerfil
    Created on : 03-may-2013, 22:37:55
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
                <div class="span12" id="respuestaPerfil">
                    <div class="row-fluid">
                        <div class="span2 top" id="foto-perfil">
                            <img alt='' src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png"  class="img-rounded span12 foto-perfil-2">
                        </div>
                        <div class="span10 top" id="biografia-perfil">
                            <div class="hero-unit biografia-perfil">

                            </div>

                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span8 offset2" id="separador">

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
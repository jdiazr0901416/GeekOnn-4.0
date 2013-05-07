<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% 
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires", 0);
String userName = (String)session.getAttribute("sessionUsername");
if(userName == null){
    response.sendRedirect("index.jsp");
}else{%>
<%--DECLARO LA VARIABLE idUsuario--%>
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>GeekOnn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Le styles -->
    <link href="recursos/css/geekonn.css" rel="stylesheet">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap.css" rel="stylesheet">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome.min.css">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="recursos/bootstrap/docs/assets/js/html5shiv.js"></script>
    <![endif]-->
    <!--[if IE 7]>
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome-ie7.min.css">
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="recursos/bootstrap/docs/assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="recursos/bootstrap/docs/assets/ico/favicon.png">
  </head>
  <body>
      <div class="row-fluid">
            <center><h3>Lo que esta pasando en geekonn en estos momentos</h3></center><hr>
            <!-- beta publicacion -->
            <div class="span8 offset2">
                <div class="row-fluid publicacion">
                    <div class="span3">
                        <center><i class="icon-picture imagen-publicacion-nula"></i></center>
                    </div>
                    <div class="span9">
                        <center><h3>Titulo de la publicación</h3></center><hr>
                        <div class="span8 offset2">
                          <p align="justify">este es el contido de mi publicacion, apoco no esta biuen bonito</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- beta publicacion -->
        </div>
      <!-- navbar bootom -->
      <div class="navbar navbar-inverse navbar-fixed-bottom" id="navbar-menu">
        <div class="navbar-inner navbar-menu">
          <div class="row-fluid">
              <div class="span6 offset3">
                  <div class="row-fluid">
                    <div class="span2">
                        <center><i class="icon-home iconos-menu" id="M-home"></i></center>
                    </div>
                    <div class="span2">
                        <center><i class="icon-user iconos-menu"></i></center>
                    </div>
                    <div class="span2">
                        <center><i class="icon-envelope-alt iconos-menu"></i></center>
                    </div>
                    <div class="span2">
                        <center><i class="icon-group iconos-menu"></i></center>
                    </div>
                    <div class="span2">
                        <center><i class="icon-comments iconos-menu"></i></center>
                    </div>
                    <div class="span2">
                        <center><i class="icon-edit iconos-menu"></i></center>
                    </div>
                  </div>
             </div>
          </div>
        </div>
      </div>
     <!-- Termina navbar  -->
  </body>
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
    <script src="recursos/ajax/popOvers/popOvers.js"></script>
</html>
<%}%>
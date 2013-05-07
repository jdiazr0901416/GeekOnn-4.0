<%-- 
    Document   : ajaxAmigos
    Created on : 04-may-2013, 19:34:34
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
            <div class="span10 offset1" id="separador">
                <div class="row-fluid" id="contenedor-amigos-recuperados">
                    <%
                    int userId=idUsuario;
                    String nombre = "";
                    SentenciasSQL cerrar0 = new SentenciasSQL();
                    SentenciasSQL sentenciasLista0 = new SentenciasSQL();
                    ResultSet resultSetLista0 =null;
                    SentenciasSQL sentenciasID0 = new SentenciasSQL();;
                    ResultSet resultSetID0 =null;
                    resultSetLista0 =  sentenciasLista0.obtenerIdAmigos(userId);

                     while(resultSetLista0.next()){
                           int userIdTable = resultSetLista0.getInt("idAmigo");
                           System.out.println(userIdTable);
                           resultSetID0= sentenciasID0.obtenerInfoUsuario(userIdTable);
                                while(resultSetID0.next()){

                                    if(resultSetID0.first()){
                                    nombre = resultSetID0.getString("nombreUsuario");
                                }
                                out.println("<div class='span2 amigo-recuperado' >");
                                    out.println("<div class='span12' id='visitarAmigo' value='nombreUsuario' onclick='visitarAmigo(this.value)'>");
                                        out.println("<p class='text-center'>"+resultSetID0.getString("nombreUsuario")+"</p>");
                                        out.println("<center><img src='recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png' alt='' class='img-rounded' id='imagen-del-usuario'></center>");
                                    out.println("</div>");
                                out.println("</div>");
                                }
                     }
                     cerrar0.closeConnection();
                    %>
                    <!-- este es un amigo 
                    <div class="span2" id="amigo">
                        <div class="span12" id="visitarAmigo" value="nombreUsuario" onclick="visitarAmigo(this.value)">
                            <center><img src="recursos/imagenes/imagenesUsuario/portada/imagen-usuario-nulo.png" class="img-rounded" id="imagen-del-usuario"></center>
                        </div>
                        <div class="span12">
                            <button type="button" class="btn btn-inverse pull-left botones-bloqueo"><i class="icon-ban-circle icon-white icon-1x"></i></button>
                            <button type="button" class="btn btn-danger pull-right botones-bloqueo"><i class="icon-minus icon-white icon-1x " ></i></button>
                        </div>
                    </div>
                    <!-- /este es un amigo -->
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
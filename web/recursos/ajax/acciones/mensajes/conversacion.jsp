
<%-- 
    Document   : geekonn-P
    Created on : 15-abr-2013, 10:22:41
    Author     : Julio
	--%>
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.geekonn.system.SentenciasSQL"%>
<%@page import="java.sql.*"%>
<!-- hacer programacion pertinente-->
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
    <link href="recursos/css/geekon-personal-css.css" rel="stylesheet">
    <link href="recursos/css/mensajes.css" rel="stylesheet">
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
                                   <%SentenciasSQL sentenciasSQL = new SentenciasSQL();%>
  </head>
  <body>
	<div class="container-fluid" id="contenedor-mensajes">
		<div class="row-fluid">
			<div class="span12">
                            <%int idUsuarioConversacion =  Integer.parseInt(request.getParameter("idUsuario"));
                            ResultSet resultsetConversacion = sentenciasSQL.devolverInformacionUsuario(idUsuarioConversacion);
                            String usuarioConversacion = "";
                            if(resultsetConversacion.next()){
                                usuarioConversacion = resultsetConversacion.getString("nombreUsuario");
                                                           }
                            %>
                            
				<center><h4>Conversación con: <%=usuarioConversacion%> </h4></center>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span11 offset1" id="contenedor-ultimos-mensajes-conversacion">
                          <!--Mensajes enviados ya-->
                          <%int usuarioReceptor = Integer.parseInt(request.getParameter("idUsuario"));
                            
                            ResultSet resultsetMensajes = sentenciasSQL.obtenerMensajes(idUsuario, usuarioReceptor);%>
			  <div class="row-fluid" id="contenedor-ultimos-mensajes-conversacion">
                              <div class="span10 offset1" id="contenedor-ultimos-mensajes">
                            <%for(int i=1;resultsetMensajes.next() && i<=15; i++){%>
                                 <%  int emisor = resultsetMensajes.getInt("idEmisor");
                                     int receptor =  resultsetMensajes.getInt("idReceptor");
                                     String mensaje = resultsetMensajes.getString("mensaje");
                                     String nombreUsuario = "";
                                     System.out.println(emisor);
                                     ResultSet resultsetUsuario = sentenciasSQL.devolverInformacionUsuario(emisor);
                                     if(resultsetUsuario.next()){
                                        nombreUsuario =  resultsetUsuario.getString("nombreUsuario");                                                
                                     }
                                     out.println("<div class='row-fluid'>");
                                     out.println("<div class='span3'>");
                                     out.println("<img src='' alt=''>");
                                     out.println("</div>");
                                     out.println("<div class='span9'>");
                                     out.println("<p align='justify'>");
                                     out.println(nombreUsuario + ": " + mensaje);
                                     out.println("</p>");
                                     out.println("</div>");
                                     out.println("</div>");
                                     
                                     }
                                     sentenciasSQL.closeConnection();
                                 %>
                              </div>
                            </div>
			  </div>
                            <div class="row-fluid top">
				  <div class="span10 offset1 top">
                                        <textarea rows="5" class="span12" name="<%=usuarioConversacion%>" onkeyup="recuperaMensaje(this.value)" onfocus="recuperaIdSelect(this.name)"></textarea>
                                        <p class="text-right"><button type="button" class="btn btn-info"  onclick="nombreUsuario()">Enviar</button></p>
				  </div>
                            </div>
                         <!--Aqui termina todo-->
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
    <script src="recursos/ajax/acciones/mensajes/ajaxMensajes.js"></script>
  </body>
</html>
<%-- 
    Document   : index
    Created on : 07-may-2013, 0:38:57
    Author     : Julio
--%>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- EXAMINA SESIONES ABIERTAS Y HACE VALIDACION--%>
<t:if test="${sessionScope['sessionUsername']!=null}">
    <% response.sendRedirect("geekonn.jsp");%>
</t:if>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>GeekOnn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Le styles -->
    <link href="recursos/css/index.css" rel="stylesheet">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap.css" rel="stylesheet">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome.min.css">
    <link href="recursos/bootstrap/docs/assets/css/bootstrap-responsive.css" rel="stylesheet">
    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js'></script>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <script type="text/javascript">
    window.___gcfg = {lang: 'es-419'};
    (function() {
      var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
      po.src = 'https://apis.google.com/js/plusone.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();
    </script>

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

     <!-- navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="index.jsp">
            <img src="recursos/imagenes/logo/geekonn.png" height="60" width="140" alt="">
          </a>
          <div class="nav-collapse collapse">
            <ul class="nav pull-right">
              <li><a href="#myModal" data-toggle="modal" data-target="#myModal" id="a-iniciar-sesion" class="boton-iniciar-sesion"><i class="icon-off icon-2x icon-white"></i>&nbsp;<b>Inicia Sesión</b></a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <!-- Termina navbar  -->
      <div class="row-fluid">
          <div class="row-fluid header">
            <div class="span4 offset2 titulo-header">
              <center><p>GeekOnn</p></center>
              <br>
              <h4 class="pull-right">BETA 4.0</h4>
            </div>
            <div class="span4 logo-geekonn pull-left">
              <center><i class="icon-off"></i></center>
            </div>          
          </div>
          <div class="row-fluid separador"></div>
          <div class="span8 offset2 contenedor-index">
            <center><h3>GeekOnn es una red social enfocada a la gente que le gusta estar al dia acerca de la tecnologia y de sus grandes avances</h3></center><hr>
            <div class="row-fluid">
              <div class="span6">
                <center><h4>Deja al alcanse de todos, los nuevos avances tecnologicos de los que te enteres! muestra el geek que llevas dentro</h4></center><hr>
                <div class="row-fluid">
                  <div class="span12 contenedor-3-noticias">
                    <!-- beta 3 noticias -->
                    <div class="row-fluid publicacion-index">
                      <div class="span3 img-publicacion-index">
                        <center><i class="icon-off"></i></center>
                      </div>
                      <div class="span9">
                        <center><h4>Titulo publicación</h4></center><hr class="clase-hr">
                        <p align="justify">esta es la breve descripción de la publicacion que estamos mostrando</p>
                      </div>
                    </div> 

                    <div class="row-fluid publicacion-index">
                      <div class="span3 img-publicacion-index">
                        <center><i class="icon-off"></i></center>
                      </div>
                      <div class="span9">
                        <center><h4>Titulo publicación</h4></center><hr class="clase-hr">
                        <p align="justify">esta es la breve descripción de la publicacion que estamos mostrando</p>
                      </div>
                    </div> 
                    <!-- beta 3 noticias -->
                  </div>
                </div>
              </div>
              <div class="span6">
                <center><h3>Registrate!</h3></center><hr>
                <div class="row-fluid">  
                  <div class="span12">
                  <!-- -------------------------------------------- ------------------ -->
                 <div class="row-fluid">
                   <div class="span5 offset2" id="text-aling-right">
                     <h4>Nombre:</h4>
                 </div>
                 <div class="span5">
                   <div class="control-group" id="div-control-space">
                     <div class="controls" style="margin-left:0;">
                       <div class="input-prepend">
                         <span class="add-on"><i class="icon-user"></i></span><input  class="input-medium" type="text" id="username" name="username" tabindex="1">
                      </div>
                     </div>
                   </div>
                 </div>
                 </div>
                 <!-- -------------------------------------------- ------------------ -->
                 <div class="row-fluid">
                   <div class="span5 offset2" id="text-aling-right">
                     <h4>Correo electronico:</h4>
                   </div>
                   <div class="span5">
                     <div class="control-group" id="div-control-space">
                       <div class="controls" style="margin-left:0;">
                         <div class="input-prepend">
                           <span class="add-on"><i class="icon-envelope"></i></span><input class="input-medium" type="text" id="username" name="username" tabindex="1" id="form-input-space">
                       </div>
                       </div>
                    </div>
                   </div>
                 </div>
                 <!-- -------------------------------------------- ------------------ -->
                 <!-- -------------------------------------------- ------------------ -->
                 <div class="row-fluid">
                   <div class="span5 offset2" id="text-aling-right">
                     <h4>Contraseña:</h4>
                   </div>
                   <div class="span5">
                     <div class="control-group" id="div-control-space">
                         <div class="controls" style="margin-left:0;">
                           <div class="input-prepend">
                             <span class="add-on"><i class="icon-lock"></i></span><input class="input-medium" type="text" id="username" name="username" tabindex="1">
                          </div>
                         </div>
                       </div>
                   </div>
                 </div>
                 <!-- -------------------------------------------- ------------------ -->
                 <center><button type="button" class="btn btn-success">Registrarme</button></center>
                 <br>
                 </div> 
                </div>
              </div>
            </div>
            <div class="row-fluid">
              <div class="span4 facebook">
                <div class="fb-like-box" data-href="http://www.facebook.com/Geekonn" data-width="380" data-height="200" data-show-faces="true" data-stream="false" data-header="false"></div>
              </div>
              <div class="span4 google top">
                <div class="g-plusone google" data-size="tall" data-annotation="inline" data-width="380"></div>
              </div>  
              <div class="span4 twitter top">
                <a href="https://twitter.com/RedGeekOnn" class="twitter-follow-button twitter" data-show-count="false" data-lang="es" data-size="large">Seguir a @RedGeekOnn</a>
                            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
              </div>    
            </div>
      </div>

    <!-- navbar bootom -->
      <div class="navbar navbar-inverse navbar-fixed-bottom">
        <div class="navbar-inner">
          <div class="container-fluid">
            <div class="nav-collapse collapse">
              <ul class="nav pull-left">
                <li><img src="recursos/imagenes/index/ipn.png" alt=""></li>
              </ul>
              <ul class="nav pull-right">
                <li><img src="recursos/imagenes/index/cecyt9.png" alt=""></li>
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </div>
      </div>

<!-- Modal inicio sesion-->
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <center><h3 id="myModalLabel">Inicia sesión</h3></center>
      </div>
      <form action='InicioSesion' METHOD='POST' class='form-horizontal'>
      <div class="modal-body">
        <div class="row-fluid">
          <div class="span6 offset3"> 
            <br>
            <div class="control-group">
              <div class="controls" style="margin-left:0;">
                <div class="input-prepend">
                  <span class="add-on"><i class="icon-user"></i></span><input placeholder="Nombre de usuario o correo" type="text" size="25" id="username" name="nombreUsuario" tabindex="1">
               </div>
              </div>
            </div>
            <div class="control-group">
              <div class="controls" style="margin-left:0;">
                <div class="input-prepend">
                  <span class="add-on"><i class="icon-lock"></i></span><input placeholder="Contraseña" type="password" value="" size="25" name="password" tabindex="2">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </form>
      <div class="modal-footer">
          <div class="span6"><h6 class="pull-left">¿No estas registrado?<a href="registro.jsp">Registrate</a></h6></div>
          <button class="btn btn-danger" type="submit"><strong>Iniciar sesión</strong></button>
      </div>
    </div>
<!-- Modal -->      
    <!-- Termina navbar  -->
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

  </body>
</html>
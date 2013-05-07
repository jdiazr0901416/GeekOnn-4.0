<%-- 
    Document   : geekonn-P
    Created on : 15-abr-2013, 10:22:41
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
    <link href="recursos/css/amigos.css" rel="stylesheet">
    <link rel="stylesheet" href="recursos/Font-Awesome-More/docs/assets/css/font-awesome.min.css">
    <script src="recursos/ajax/acciones/amigos/ajaxAmigos.js"></script>

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
<!-- amigos!------------------------------------------------------------------------------------------------------------------------------------ -->
        <div class="row-fluid">
            <div class="span10 offset1 top">
                <div class="row-fluid amigos-separador">
            <div class="span9" id="contenedor-amigos">
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
            <div class="span3" id="contenedor-configuracion-principal">
                <div class="row-fluid">
                    <div class="span12">
                    <div class="row-fluid">
                        <!-- Modal bloqueo -------------------------------------------------------------------------------------->
                            <div id="myModalBloqueo" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                              <div class="row-fluid">
                                    <div class="span12" id="color-modal"> 
                                      <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h3 id="myModalLabel">Bloquear Amigo</h3>
                                      </div>
                                      <div class="modal-body">
                                            <div class="row-fluid">
                                              <div class="span6 offset3"> 
                                                      <center><h4>Seleciona  a tu amigo:&nbsp;<h4>
                                                        <select name="mensaje-amigo" onchange="recuperaIdSelect(this.value)">
                                                            <option>Elije un nombre</option>
                                                            <%
                                                            nombre = "";
                                                            SentenciasSQL cerrar = new SentenciasSQL();
                                                            SentenciasSQL sentenciasLista = new SentenciasSQL();
                                                            ResultSet resultSetLista =null;
                                                            SentenciasSQL sentenciasID = new SentenciasSQL();;
                                                            ResultSet resultSetID =null;
                                                            resultSetLista =  sentenciasLista.obtenerIdAmigos(userId);

                                                             while(resultSetLista.next()){
                                                                   int userIdTable = resultSetLista.getInt("idAmigo");
                                                                   System.out.println(userIdTable);
                                                                   resultSetID= sentenciasID.obtenerInfoUsuario(userIdTable);
                                                                        while(resultSetID.next()){

                                                                            if(resultSetID.first()){
                                                                            nombre = resultSetID.getString("nombreUsuario");
                                                                        }
                                                                        out.println("<option>"+resultSetID.getString("nombreUsuario")+"</option>");
                                                                        }
                                                             }
                                                             cerrar.closeConnection();
                                                            %>
                                                        </select>
                                                        </center>
                                                      <br>

                                              </div>
                                            </div>
                                      </div>
                                      <div class="modal-footer">
                                          <button class="btn btn-primary" id="bloquearAmigo" data-dismiss="modal" aria-hidden="true" onclick="bloquearUsuario()">Bloquear Amigo</button>
                                      </div>
                                    </div>
                              </div>
                            </div>
                            <!-- Termina Modal ---------------------------------------------------------------------------------->
                            <!-- Modal desbloqueo -------------------------------------------------------------------------------------->
                            <div id="myModalDesbloqueo" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                              <div class="row-fluid">
                                    <div class="span12" id="color-modal"> 
                                      <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h3 id="myModalLabel">Desbloquear Amigo</h3>
                                      </div>
                                      <div class="modal-body">
                                            <div class="row-fluid">
                                              <div class="span6 offset3"> 
                                                      <center><h4>Seleciona  a tu amigo:&nbsp;<h4>
                                                        <select name="mensaje-amigo" onchange="recuperaIdSelect2(this.value)">
                                                            <option>Elije un nombre</option>
                                                            <%
                                                            nombre = "";
                                                            SentenciasSQL cerrar2 = new SentenciasSQL();
                                                            SentenciasSQL sentenciasLista2 = new SentenciasSQL();
                                                            ResultSet resultSetLista2 =null;
                                                            SentenciasSQL sentenciasID2 = new SentenciasSQL();;
                                                            ResultSet resultSetID2 =null;
                                                            resultSetLista2 =  sentenciasLista2.obtenerIdAmigosBloqueados(userId);
                                                             while(resultSetLista2.next()){
                                                                   int userIdTable = resultSetLista2.getInt("idAmigo");
                                                                   System.out.println(userIdTable);
                                                                   resultSetID2= sentenciasID2.obtenerInfoUsuario(userIdTable);
                                                                        while(resultSetID2.next()){

                                                                            if(resultSetID2.first()){
                                                                            nombre = resultSetID2.getString("nombreUsuario");
                                                                        }
                                                                        out.println("<option>"+resultSetID2.getString("nombreUsuario")+"</option>");
                                                                        }
                                                             }
                                                             cerrar2.closeConnection();
                                                            %>
                                                        </select>
                                                        </center>
                                                      <br>

                                              </div>
                                            </div>
                                      </div>
                                      <div class="modal-footer">
                                            <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true" onclick="desbloquearUsuario(this.value)">Desbloquear Amigo</button>
                                      </div>
                                    </div>
                              </div>
                            </div>
                            <!-- Termina Modal ---------------------------------------------------------------------------------->
                            <!-- Modal desbloqueo -------------------------------------------------------------------------------------->
                            <div id="myModalDesbloqueoN" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                              <div class="row-fluid">
                                    <div class="span12" id="color-modal"> 
                                      <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h3 id="myModalLabel">Desbloquear Amigo</h3>
                                      </div>
                                      <div class="modal-body">
                                            <div class="row-fluid">
                                              <div class="span12">
                                                  <br>
                                                  <center><h1>No tienes amigos bloqueados aun</h1></center>
                                                  <br>
                                              </div>
                                            </div>
                                      </div>
                                      <div class="modal-footer">
                                            <button class="btn btn-primary" data-dismiss="modal" aria-hidden="true">Salir</button>
                                      </div>
                                    </div>
                              </div>
                            </div>
                            <!-- Termina Modal ---------------------------------------------------------------------------------->
                            <div class="span12">
                                  <div class="row-fluid">
                                      <div class="row-fluid meta-black">
                                          <div class="span12">
                                              <p class="text-center"><b>Configuración</b></p>
                                          </div>
                                      </div>
                                      <div class="row-fluid" id="bloqueo">
                                          <div class="span12">
                                              <div class="row-fluid">
                                                  <div class="span3">
                                                     <center><i class="icon-lock icon-4x icon-derecha"></i></center>
                                                  </div>
                                                  <div class="span9">
                                                      <p class="text-center"><h4><a href="#myModalBloqueo" data-toggle="modal" data-target="#myModalBloqueo" id="a-iniciar-sesion">Bloquear un umigo</a></h4></p>
                                                  </div>
                                              </div>
                                              <div class="row-fluid">
                                                  <div class="span3">
                                                      <center><i class="icon-unlock icon-4x icon-derecha"></i></center>
                                                  </div>
                                                  
                                                  <div class="span9">
                                                      <%
                                                        SentenciasSQL cerrar3 = new SentenciasSQL();
                                                        SentenciasSQL sentenciasLista3 = new SentenciasSQL();
                                                        if(sentenciasLista3.revisarAmigosBloqueados(idUsuario)==false){
                                                           out.print("<p class='text-center'><h4><a href='#myModalBloqueo' data-toggle='modal' data-target='#myModalDesbloqueoN' id='a-iniciar-sesion'>Desbloquear un amigo</a></h4></p>");
                                                        }else{
                                                            out.print("<p class='text-center'><h4><a href='#myModalBloqueo' data-toggle='modal' data-target='#myModalDesbloqueo' id='a-iniciar-sesion'>Desbloquear un amigo</a></h4></p>");
                                                        }
                                                        cerrar3.closeConnection();
                                                      %>
                                                      
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                            <div class="span12">
                              <div class="row-fluid" id="respuestaDesbloquear">
                              </div>
                         </div>
                       </div>
                      <div class="span12">       
                          <div class="row-fluid busqueda-amigo">
                                <div class="span12">
                                      <div class="row-fluid">
                                          <div class="row-fluid meta-black">
                                              <div class="span12">
                                                  <p class="text-center"><b>Buscar un amigo</b></p>
                                              </div>
                                          </div>
                                          <div class="row-fluid" id="busqueda">
                                              <div class="span12 busqueda-amigo" >
                                                  <center><div class="control-group" id="div-control-space">
                                                      <div class="controls" style="margin-left:0;">
                                                        <div class="input-prepend">
                                                            <span class="add-on"><i class="icon-search"></i></span><input  class="input-medium" type="text" tabindex="1" onkeyup="buscarAmigo(this.value)">
                                                        </div>
                                                      </div>
                                                  </div></center>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                          </div>
                      </div>
                    <div class="span12">                                      
                        <div class="row-fluid" id="encontrado">

                        </div>
                    </div>
                </div>
            </div>
        </div>
       </div
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

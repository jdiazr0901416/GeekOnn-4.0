<%-- 
    Document   : respuestaExiste
    Created on : 24/04/2013, 09:01:18 AM
    Author     : jdiazr0901416
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL"%>
<%@ page import = "com.geekonn.validaciones.Validaciones"%>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<%  
    int validacion;
    String nombreUsuario= request.getParameter("nU");
    SentenciasSQL existe = new SentenciasSQL();
    Validaciones  validar=new Validaciones();
    int respuestaExiste = existe.revisar(nombreUsuario);
    System.out.println(nombreUsuario);
    if(respuestaExiste==1){
        out.println("<div class='alert alert-error'>");
        out.println("<button type='button' class='close' data-dismiss='alert'>×</button>");
        out.println("<strong>El nombre de usuario no esta disponible &nbsp; <i class='icon-thumbs-down'></i></strong>");
        out.println("</div>");
    }else{
        out.println("<div class='alert alert-success'>");
        out.println("<button type='button' class='close' data-dismiss='alert'>×</button>");
        out.println("<strong>El nombre de usuario esta disponible &nbsp; <i class='icon-thumbs-up'></i></strong>");
        out.println("</div>");
        if(validar.revisarSoloCaracteres(nombreUsuario)==0){
            System.out.println("introdujeron numeros");
            out.println("<div class='alert alert-error'>");
        out.println("<button type='button' class='close' data-dismiss='alert'>×</button>");
        out.println("<strong>No puedes poner numeros &nbsp; <i class='icon-thumbs-down'></i></strong>");
        out.println("</div>");
        }else{
            
        }
    }
%>
                       

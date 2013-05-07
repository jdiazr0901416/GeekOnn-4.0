<%-- 
    Document   : respuestaBlanco
    Created on : 02-may-2013, 22:27:38
    Author     : Alumnos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL"%>
<%@ page import = "com.geekonn.validaciones.Validaciones"%>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% 
        out.println("<div class='alert alert-error'>");
        out.println("<button type='button' class='close' data-dismiss='alert'>×</button>");
        out.println("<strong>Sin espacios en blanco &nbsp; <i class='icon-thumbs-down'></i></strong>");
        out.println("</div>");
%>
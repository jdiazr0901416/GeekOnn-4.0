<%-- 
    Document   : bloquearAmigo
    Created on : 26-abr-2013, 0:13:06
    Author     : Julio
--%>
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<% 
    String nombreUsuario= request.getParameter("nombre");
    System.out.println("entre a bloquear y te imprimo nombre"+ nombreUsuario);
    SentenciasSQL recuperarId = new SentenciasSQL();
    SentenciasSQL bloquearAmigo = new SentenciasSQL();
    int idUsuario2=recuperarId.devolverIDUsuario(nombreUsuario);
    bloquearAmigo.blockAFriend(idUsuario, idUsuario2);
    response.sendRedirect("http://localhost:8080/GeekOnn/recursos/ajax/menu/amigos.jsp");
%>    

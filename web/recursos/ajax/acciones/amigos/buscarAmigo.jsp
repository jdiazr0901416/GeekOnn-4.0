<%-- 
    Document   : buscarAmigo
    Created on : 01-may-2013, 21:47:51
    Author     : Julio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "com.geekonn.system.SentenciasSQL" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "javax.servlet.http.HttpServletResponse" %>
<%int idUsuario = Integer.valueOf("" + session.getAttribute("sessionIdUsuario"));%>
<% 
    String nombreAmigo;
    String nombreUsuario= request.getParameter("nombre");
    SentenciasSQL sentencias = new SentenciasSQL();
    SentenciasSQL sentenciasclose = new SentenciasSQL();
    ResultSet resultSet =null;
    resultSet = sentencias.buscarUsuarioGeekonn(nombreUsuario);
    while(resultSet.next()){
        System.out.println(resultSet.getString("nombreUsuario")+"soy amigo encontrado");
    }
    resultSet.close();
    sentenciasclose.closeConnection();
%>    

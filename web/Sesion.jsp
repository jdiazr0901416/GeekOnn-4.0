<%-- 
    Document   : Sesion
    Created on : 01-may-2013, 19:17:51
    Author     : Bouchan
--%>
<% 
String userName = (String)session.getAttribute("sessionUsername");
if(userName == null){
    response.sendRedirect("index.jsp");
}else{
    response.sendRedirect("geekonn.jsp");
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

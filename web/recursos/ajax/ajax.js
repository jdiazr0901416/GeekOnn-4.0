document.write("<script type='text/javascript' src='recursos/ajax/acciones/amigos/ajaxAmigos.js'></script>");
document.write("<script type='text/javascript' src='recursos/ajax/acciones/perfil/ajaxPerfil.js'></script>");
function respuestaNewsFeed(){
    var str=1;
    var conexion;
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState===4 && conexion.status===200)
        {
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/menu/newsFeed.jsp",true);
    conexion.send();
    imprimirTitulo(str);
    
}

function respuestaPerfil(){
    var str=2;
    var conexion;
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState===4 && conexion.status===200)
        {
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        document.getElementById("informacion-perfil").addEventListener("click", informacionPerfil , false);
        document.getElementById("amigos-perfil").addEventListener("click", amigosPerfil , false);
        document.getElementById("ultimas-opiniones-perfil").addEventListener("click", ultimasOpiniones , false);
        document.getElementById("favoritos-perfil").addEventListener("click", favoritos , false);
        }
      }
    conexion.open("GET","recursos/ajax/menu/perfil.jsp",true);
    conexion.send();
    imprimirTitulo(str);
}
function respuestaMensajes(){
    var str=3;
    var conexion;
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState===4 && conexion.status===200)
        {
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/menu/mensajes.jsp",true);
    conexion.send();
    imprimirTitulo(str);
}
function respuestaAmigos(){
    var str=4;
    var conexion;
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState===4 && conexion.status===200)
        {
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        
        }
      }
    conexion.open("GET","recursos/ajax/menu/amigos.jsp",true);
    conexion.send();
    imprimirTitulo(str);
}
function respuestaOpiniones(){
    var str=5;
    var conexion;
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState===4 && conexion.status===200)
        {
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/menu/opiniones.jsp",true);
    conexion.send();
    imprimirTitulo(str);
}
function respuestaOpciones(){
    var str=6;
    var conexion;
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState===4 && conexion.status===200)
        {
        document.getElementById("recibidor-ajax-geekonn").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/menu/opciones.jsp",true);
    conexion.send();
    imprimirTitulo(str);
}
function imprimirTitulo(str){
    var titulo=str;
    var conexion;
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState===4 && conexion.status===200)
        {
        document.getElementById("header").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/imprimeTitulo.jsp?titulo="+titulo,true);
    conexion.send();
}
$(document).on('ready', inicio());
    function inicio(){
      $('#M-home').on('click', respuestaNewsFeed);
      $('#M-perfil').on('click', respuestaPerfil);
      $('#M-mensajes').on('click', respuestaMensajes);
      $('#M-amigos').on('click', respuestaAmigos);
      $('#M-opiniones').on('click', respuestaOpiniones);
      $('#M-opciones').on('click', respuestaOpciones);
    }
    





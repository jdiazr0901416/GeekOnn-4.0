function existe(str){
    limpiar();
    vacio(str);
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
        document.getElementById("input-nombre-usuario").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/registro/respuestaExiste.jsp?nU="+str,true);
    conexion.send();
}
function vacio(q) {
    limpiar();
for ( i = 0; i < q.length; i++ ) {
if ( q.charAt(i) != " " ) {
}else{
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
        document.getElementById("input-nombre-usuario").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/registro/respuestaBlanco.jsp",true);
    conexion.send();
}
}
}
function limpiar(){
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
        document.getElementById("input-nombre-usuario").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/registro/respuestaBlanco.jsp",true);
    conexion.send();
}

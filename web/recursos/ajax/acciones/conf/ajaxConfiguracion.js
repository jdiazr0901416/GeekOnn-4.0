function respuestaConfiguracion(){
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
        document.getElementById("contenedor-principal-geekoonn").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/conf/respuestaConfiguracion.jsp",true);
    conexion.send();
}



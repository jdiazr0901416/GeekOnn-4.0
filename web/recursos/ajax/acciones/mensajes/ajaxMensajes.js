var nombreUsuarioG;
var mensajeG;
function recuperaIdSelect(str){
    this.nombreUsuarioG=str;
    console.log(str);
}
function recuperaMensaje(str2){
    this.mensajeG=str2;
    console.log(str2)
}
function nombreUsuario(){
    var nombre;
    nombre= this.nombreUsuarioG;
    var mensaje;
    mensaje= this.mensajeG;
    console.log(mensaje+"enviado")
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
      if (conexion.readyState==4 && conexion.status==200)
        {
        document.getElementById("contenedor-enviar-mensajes").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/mensajes/EnviarMensajes.jsp?nombre="+nombre+"&idUsuarioConversacion="+nombreUsuarioG+"&mensaje="+mensaje,true);
    conexion.send();
}
function respuestaConversacion(idUsuario){
    var conexion;
    /*al recibir el id del usuario podemos pasar por url el id del usuario faciulmente al jsp que se encarga de generar la conversacion
     * FORZOSAMENTE AL CONVERSACION.JSP*/
    console.log("prueba " + idUsuario);
    console.log("entro a conversacion")
    if (window.XMLHttpRequest)
      {
      conexion=new XMLHttpRequest();
      console.log("entro a conexion actualizada")
      }
    else
      {
      conexion=new ActiveXObject("Microsoft.XMLHTTP");
      }
    conexion.onreadystatechange=function()
      {
      if (conexion.readyState===4 && conexion.status===200)
        {
        document.getElementById("contenedor-enviar-mensajes").innerHTML=conexion.responseText;
        console.log("documento listo debio cargar")
        }
      }
    conexion.open("GET","recursos/ajax/acciones/mensajes/conversacion.jsp?idUsuario=" + idUsuario,true);
    
    //conexion.open("GET","recursos/ajax/acciones/conversacion.jsp?idUsuario",true);
    conexion.send();
}
function nuevoMensaje(){
    console.log("si entro esta mierda");
    
}
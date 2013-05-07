var nombreUsuarioG;
var nombreUsuarioG2;
var nombreUsuarioG3;
function recuperaIdSelect(str){
    this.nombreUsuarioG=str;
    console.log(str);
}
function recuperaIdSelect2(str){
    this.nombreUsuarioG2=str;
    console.log(str);
}
function recuperaIdSelect3(str){
    this.nombreUsuarioG3=str;
    console.log("entre a id3 "+str);
}
function respuestaBusquedaAmigo(){
    var conexion;
    console.log("entre a rba");
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
        document.getElementById("encontrado").innerHTML=conexion.responseText;
        }
      }
    conexion.open("GET","recursos/ajax/acciones/amigos/AmigoEncontrado.jsp",true);
    conexion.send();
}
function bloquearUsuario(){
    var nombre;
    nombre=this.nombreUsuarioG;
    console.log("entre"+nombre);
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
        document.getElementById("principal").innerHTML=conexion.responseText;
        
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/bloquearAmigo.jsp?nombre="+nombre,true);
    conexion.send();
}
function desbloquearUsuario(){
    var conexion;
    var nombre;
    nombre= this.nombreUsuarioG2;
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
        document.getElementById("principal").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/desbloquearAmigo.jsp?nombre="+nombre,true);
    conexion.send();
    
}
function buscarAmigo(str){
    var conexion;
    var nombre;
    nombre= str;
    console.log("este es buscar amigo " + str);
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
        document.getElementById("").innerHTML=conexion.responseText;
        }
      }
    conexion.open("POST","recursos/ajax/acciones/amigos/buscarAmigo.jsp?nombre="+nombre,true);
    conexion.send();
    
}

function newsFeedInMenu(){
    $("#M-home").popover({ template: '<div class="popover popover-up" style="width:250px;"><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center tituloNF" id="tituloNF"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover",placement:"top"});
    $('#M-home').popover('show');
    console.log("entre a popover menu");
}
function newsFeedInMenuPerfil()
{
    $("#M-perfil").popover({ template: '<div class="popover popover-up" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center" id="tituloP"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover",placement:"top"});
    $('#M-perfil').popover('show');
}
function newsFeedInMenuMensajes()
{
    $("#M-mensajes").popover({ template: '<div class="popover popover-up" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center" id="tituloM"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover",placement:"top"});
    $('#M-mensajes').popover('show');
}
function newsFeedInMenuAmigos()
{
    $("#M-amigos").popover({ template: '<div class="popover popover-up" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center" id="tituloA"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover",placement:"top"});
    $('#M-amigos').popover('show');
}
function newsFeedInMenuOpiniones()
{
    $("#M-opiniones").popover({ template: '<div class="popover popover-up" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center"  id="tituloO"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover",placement:"top"});
    $('#M-opiniones').popover('show');
}
function newsFeedInMenuOpciones()
{
    $("#M-opciones").popover({ template: '<div class="popover popover-up" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center"  id="tituloOO"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover",placement:"top"});
    $('#M-opciones').popover('show');
}

$(document).on('ready', inicio());
    function inicio(){
      $('#M-home').on('mouseover', newsFeedInMenu);
      $('#M-perfil').on('mouseover', newsFeedInMenuPerfil);
      $('#M-mensajes').on('mouseover', newsFeedInMenuMensajes);
      $('#M-amigos').on('mouseover', newsFeedInMenuAmigos);
      $('#M-opiniones').on('mouseover', newsFeedInMenuOpiniones);
      $('#M-opciones').on('mouseover', newsFeedInMenuOpciones);
    }